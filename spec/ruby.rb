# ruby test file ruby.rb

include Enumerable

def initialize(rbconfig)
@rbconfig = rbconfig
@no_harm = false
end

import java.io.*;

public class Hello {

        public static void main ( String[] args)
        {
                System.out.println ("Hello Ruby!\n");
        }
}

# Class names must be capitalized.  Technically, it's a constant.
class Fred

  # The initialize method is the constructor.  The @val is
  # an object value.
  def initialize(v)
    @val = v
  end

  # Set it and get it.
  def set(v)
    @val = v
  end

  def to_s
    return "Fred(val=" + @val.to_s + ")"
  end

  # Since a simple access function is so common, ruby lets you declare one
  # automatically, like this:
  attr_reader :val
  # You can list any number of object variables. Separate by commas, and each
  # needs its own colon
  # attr_reader :fred, :joe, :alex, :sally
end

class Alice <Fred
  # We have a message, too.
  def initialize(n, m)
    super(n)
    @msg = m
  end

  # Takes the base result and changes the class name.
  def to_s
    ret = super
    ret.gsub!(/Fred/, 'Alice')
    return ret + ' ' + @msg + '!'
  end

  # The = allows the method to be used on the right, and the left of the
  # assignment is the parameter.
  def appmsg=(more)
    @msg += more
  end

  # Like attr_reader, if you want the data to be assignable.
  attr_writer :msg
end

a = Fred.new(45)
b = Alice.new(11, "So there")

print "A: a = ", a, "\n   b = ", b, "\n"

print "B: ", a.val, " ", b.val, "\n"

b.msg = "Never"
print "B: b = ", b, "\n"
b.appmsg = " In a million years"
print "C: b = ", b, "\n"

$("a").attr("href", "<%= user.blog_url %>")

print: "<p>Hello, Jack.</p>"

def load_savefile
begin
    File.foreach(savefile()) do |line|
    k, v = *line.split(/=/, 2)
    self[k] = v.strip;
    end
rescue Errno::ENOENT
    setup_rb_error $!.message + "\n#{File.basename($0)} config first"
end
end



if c['rubylibdir']
    # V > 1.6.3
    libruby         = "#{c['prefix']}/lib/ruby"
    siterubyverarch = c['sitearchdir']
end
parameterize = lambda {|path|
    path.sub(/\A#{Regexp.quote(c['prefix'])}/, '$prefix')
}

require 'chilkat'

#  The mailman object is used for sending and receiving email.
CkMailMan = Chilkat::CkMailMan.new()

#  Any string argument automatically begins the 30-day trial.
success = mailman.UnlockComponent("30-day trial")
if (success != true)
    print mailman.lastErrorText() + "\n";
    exit
end

#  Set the SMTP server.
mailman.put_SmtpHost("smtp.comcast.net")

#  Create a new email object
CkEmail = Chilkat::CkEmail.new()

#  Add an embedded image to the HTML email.
fileOnDisk = "images/dude2.gif"
filePathInHtml = "dudeAbc.gif"

#  Embed the GIF image in the email.
success = email.AddRelatedFile2(fileOnDisk,filePathInHtml)
if (success != true)
    print mailman.lastErrorText() + "\n";
    exit
end

#  The src attribute for the image tag is set to the filePathInHtml:
htmlBody = "<html><body>Embedded Image:<br><img src=\"dudeAbc.gif\"></body></html>"

#  Set the basic email stuff: HTML body, subject, "from", "to";
email.SetHtmlBody(htmlBody)
email.put_Subject("Ruby HTML email with an embedded image.")
email.AddTo("Admin","admin@chilkatsoft.com")
email.put_From("Chilkat Support <support@chilkatsoft.com>")

success = mailman.SendEmail(email)
if (success != true)
    print mailman.lastErrorText() + "\n";
else
    print "Mail Sent!" + "\n"
end
