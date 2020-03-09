Return-Path: <clang-built-linux+bncBDAMN6NI5EERBPNPTLZQKGQED72NHOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BEB117E847
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Mar 2020 20:23:42 +0100 (CET)
Received: by mail-wm1-x33e.google.com with SMTP id p186sf238055wmp.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Mar 2020 12:23:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583781822; cv=pass;
        d=google.com; s=arc-20160816;
        b=VrxFdBDCPUILS8992EtqB24Wb8dwP3uMjd6QXs7OHQaai/QKSmezP3MQpf73j4URs4
         BYr348pFU+NZTXT/uB9nBmKXVYgS2jfWvsEdT71dtFEQrr2mzOu4rCHuVvfA+SQBqDhF
         stysd6ZDUsQIdnuzbh/XEYfIJ61JZPulIHR7jOzQHFtf8H9DI/z8zJIIYApsLgcbuWGJ
         8RaYYCWuDvcNoSkMi8kK1hNBzv1qkr3xiEH6lkJXEbU0G0zaRE5Dt1NK7/iQM/wYzIhd
         EMpNShVgk6xHlZCJWxL6djrHmNXLE3g+9POuNjkCS9FSH+HOzYYGBkNp/3/Iol5R6qyz
         6dqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:sender:dkim-signature;
        bh=LxlNg2u3m9tBZ0WCmh5ImDEnPjW7t5auB1tQI2p0ixc=;
        b=PKBwI8VW3YGTIjADJULuy0ByiznxD+6WqMviC7kEfB/Dp02Hgj6oFpK5OrdS4R/G/x
         9tPQLbz38jWZzletxPXjFEYvh01v9grEu+RWjapF4XjJiDaITstLpF2pczCvCDUsjx6+
         KMg+HEFBU9Dxe3hisge48h10hCqpfvZu07rXgHYW7nQC8UqwGs+58eAXApJg8p0XA14o
         t1Y/Lh8jRC5gbm/jt7BEAOAp12ZS1vdYSb4CBAPKgfwTBJax/cV0LJQTTSrafbNkUfNS
         9UnCzyr2kv9G7HprWOB1ucNC3erG2648ucwuuTfcJTnZAh8w6Xz/7eRveXvNAsZIflL/
         PyDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LxlNg2u3m9tBZ0WCmh5ImDEnPjW7t5auB1tQI2p0ixc=;
        b=by3RQe0JeJC6d5mtoPltP2K9VY8fwqK9Eq9L2rj8XrKcsyV09Vc0x2OYuaZDGw4KcY
         hKMmqALZ2s2i+9shhjQReoxGXDP6Rb9Ml5srbArlHSe3Ol/wfZRbOo9hoCX0mj3BaQgS
         9KYFTkfCybbh1Q5gHEpgHgVOS9ehG/NhvR8Frv6biuqaY7dJIycFQ64WxAVxy8OwUwQa
         yOoGnPFCWT9ynUu1sByrY3x4edAd/9Ugn1hY+JFJawo82aPPNjMnfNzq0tlp4hx8xEpw
         xlGyBm89Q25uToPxwnlkzoeGdDepwN+IABYVSzJSXPOaNi9lltWC9Ti0yVJV+cnkc0Fl
         QCDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LxlNg2u3m9tBZ0WCmh5ImDEnPjW7t5auB1tQI2p0ixc=;
        b=IDQTlWcksV/VImgTJP28g9AfNG6XEmBihanZ+tclREAGY+q+sU+lXthbeCEZj8NuOP
         Vsyr/ukxC0vcJ6O07MN3pF2BLKUDrtWyrQeTq3OcwkMkUK0Z05VCd8tPmsyPMwIpBftM
         ZPP2VTtSo5YN46mMvYHrRfJac0+XLDiutv5bJRmXnwVTQaacEXKus8oUlMy2HXa8/g17
         BNzAca/ZH0xaE++2wp56T5ZjJJ6haDBh90CDddKsIWgBmc1Nypf2nRJ748JMRJhrqSyi
         6FLETBeANdkWepjgpS0oJ4IgMxk17sQ+QxtNeszxA/x2Eackp3baxoEhRBcPw7Klpj+G
         jJ5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2eDXcu7ryNHnvmhocB7UdERHRu7ErdzAOPFEraIp6JOSaWOBpW
	qF8D9MMqFv0SgnsIr54LU0w=
X-Google-Smtp-Source: ADFU+vs2IGzfrr2oZBWDGlS79GraKH+VNHzhewSFxIhm6fukXNq17RpbJnLWvge7hZ3mhkrPpJeCUw==
X-Received: by 2002:a7b:cb93:: with SMTP id m19mr753813wmi.133.1583781821941;
        Mon, 09 Mar 2020 12:23:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f8d1:: with SMTP id f17ls6466634wrq.3.gmail; Mon, 09 Mar
 2020 12:23:41 -0700 (PDT)
X-Received: by 2002:a05:6000:10c5:: with SMTP id b5mr23136754wrx.203.1583781821291;
        Mon, 09 Mar 2020 12:23:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583781821; cv=none;
        d=google.com; s=arc-20160816;
        b=xBJE1wjtt3Oa+dvbftCpTa2yaXlyM8MtWQKTjRvcbcGMCYc/yE3eOWKvIhHNOSgwef
         hiq0TIu5GtYt+aIXQ2/HlQoYeVxf9xK8jtloKMcqLiHMDVQRB4y3gQTrzLH+rTD0KTzS
         jSttGXkVeelXZJUUDTu3O/f2K6VTwERIbxbLWPAHNZoe5bQogSZjsy2h3DQwf6Xx8QwV
         g5+cez/OUyZWsLDlBiqEyQZt6UH596XeQ62bXnlBxyVLR2ZAKLMQcjXy9UlFa9sY4+wh
         WeZHa5Up6qd3nmjwLkpoDORG/5sViu8URaTkS0Pju/xVOT/XQo50j1GquafzzKrWPNcm
         q8/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from;
        bh=+ft+Fn9t8bWhHds5BF/w5QFLfpjsQj8LpzLIVszzuTI=;
        b=eaELr/1GE/wpc4JGj8ek4S3dc1FlP1qIsROMifoT21gIj1NlgYbRIrBUamFE7fFHA4
         gjgFMLZj3P0hUtLdb2gnmTHe6Yqx4IWNRQqdk3eO4T05d1eaixWSvqDh74IuXTsa4RkH
         c+Ln5b7QnLZVd1cRPVGIen5zhKU3GJyCf+IH+o2VZFK+sD1ZqCx0vj1Yg5Ea8gOayV4v
         AgIYuqqhrK9FXJZifXkldSsZ05PmjGDU8Ughu96E61WwyxLvJUihOFqQVnBSG//Ll617
         bo0Oz3MQxHTkV4008bW1NC5/a4tFUz96VoB9F9T/s07eIywZzd4b2wa1vKJ+pl8DqDCV
         bZRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id d16si521361wrv.4.2020.03.09.12.23.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 09 Mar 2020 12:23:41 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from p5de0bf0b.dip0.t-ipconnect.de ([93.224.191.11] helo=nanos.tec.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tglx@linutronix.de>)
	id 1jBNzw-0005xU-TG; Mon, 09 Mar 2020 20:23:33 +0100
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
	id 2F3E610408A; Mon,  9 Mar 2020 20:23:32 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: Mark Rutland <mark.rutland@arm.com>, Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: Andy Lutomirski <luto@amacapital.net>, linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org, clang-built-linux@googlegroups.com, x86@kernel.org, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>, Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>, Paul Burton <paul.burton@mips.com>, Andy Lutomirski <luto@kernel.org>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, Stephen Boyd <sboyd@kernel.org>, Mark Salyzyn <salyzyn@android.com>, Kees Cook <keescook@chromium.org>, Peter Collingbourne <pcc@google.com>, Dmitry Safonov <0x7f454c46@gmail.com>, Andrei Vagin <avagin@openvz.org>, Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v2 00/20] Introduce common headers
In-Reply-To: <20200309122429.GB26309@lakrids.cambridge.arm.com>
References: <20200306133242.26279-1-vincenzo.frascino@arm.com> <3278D604-28F1-47A1-BAB8-D8EB439995E8@amacapital.net> <b18c7ce1-0948-a9e2-2d7e-d019669a71e1@arm.com> <20200309122429.GB26309@lakrids.cambridge.arm.com>
Date: Mon, 09 Mar 2020 20:23:32 +0100
Message-ID: <877dzt72ob.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1,SHORTCIRCUIT=-0.0001
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tglx@linutronix.de designates
 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

Mark Rutland <mark.rutland@arm.com> writes:
> On Mon, Mar 09, 2020 at 11:07:08AM +0000, Vincenzo Frascino wrote:
>> On 3/6/20 4:04 PM, Andy Lutomirski wrote:
>> >> To solve the problem, I decided to use the approach below:
>> >>  * Extract from include/linux/ the vDSO required kernel interface
>> >>    and place it in include/common/
>> >=20
>> > I really like the approach, but I=E2=80=99m wondering if =E2=80=9Ccomm=
on=E2=80=9D is the
>> > right name. This directory is headers that aren=E2=80=99t stable ABI l=
ike
>> > uapi but are shared between the kernel and the vDSO. Regular user
>> > code should *not* include these, right?
>> >=20
>> > Would =E2=80=9Cvdso=E2=80=9D or perhaps =E2=80=9Cprivate-abi=E2=80=9D =
be clearer?
>>=20
>> Thanks! These headers are definitely not "uapi" like and they are meant =
to
>> evolve in future like any other kernel header. We have just to make sure=
 that
>> the evolution does not break what we are trying to achieve with this ser=
ies.
>
> Given we already include uapi/* headers in kernel code, I think placing
> these in a vdso/* namespace would be fine. I think that more clearly
> expresses the constraints on the headers than private-abi/* would.

Yes, that makes most sense.

Thanks,

        tglx

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/877dzt72ob.fsf%40nanos.tec.linutronix.de.
