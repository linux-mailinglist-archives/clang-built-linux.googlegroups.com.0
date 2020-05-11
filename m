Return-Path: <clang-built-linux+bncBDUIVVFA6YCBBRO7432QKGQE72XDWPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E8401CE4FC
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 May 2020 22:04:22 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id s19sf104428ljj.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 May 2020 13:04:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589227462; cv=pass;
        d=google.com; s=arc-20160816;
        b=JQ4NHeUVFD/SUw0ukVXw/my+QBdAcIagNcwjrY99N3qKVKK6gkOxvqOJNu62TkVR68
         TqbfQ4kzd2+Rp1EQlzzcG7Z2gU25AT2LmVjEKYybvG1+14MED0oNrDq/j50ryLGeMwtz
         K9D02dyHrNGiN0cjvRFfRXZkt174W7hqMVZLIo0H178xwRD6VMgL9DmyO7RvCYjUPO/E
         P+hePgc69by+62Py/6jhRiYpNJczlu/wn68EciSLdZ3NVQ41706VEyfboCeXb2Efixi6
         8o5BhXO08d4nUxyg+Zqnu6BOPYHg1gX074jf93gHliSfNmUgLcCIqpNjv/mqUyFptgsu
         J3+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:cc:to:from:subject:message-id:sender:dkim-signature;
        bh=Kv57MHqHG7nVqfo34K/1dXqS3gN+E9qxOgm5+bccZv8=;
        b=CqwjNrGuSSkXXQxagA8q9548UxHPwxiXUoQEmI15VoRMhqWpmuMFKnebVNY+htVlGW
         bKR82symflu4ULVElEI2y7+XIm9Vfg/FAGLggmjndmaqY8htgWFTteIk3mI4VEnOM83T
         UUEFh8oZllBxHFLhJt6HpmCDOy2XebOoBtSbSmXh8qlpbmS9LLlbS8I+MVsY+wptiv7O
         T5xQ0bmAaACDK+UZs5KdvHaxkm3VayXs1wT0zVKfnQpa2OzAYBnF5VaeFlSleklUaXPN
         PSoNX6GBnBwzzfyRhkAIA01b0BhAc7CYSBvNf242PTHp1zQuL0SvUPH5tHhn1pBf3fRR
         imSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=ZDuddt6I;
       spf=temperror (google.com: error in processing during lookup of batv+9a60fdb68fc57490c064+6105+infradead.org+dwmw2@merlin.srs.infradead.org: DNS error) smtp.mailfrom=BATV+9a60fdb68fc57490c064+6105+infradead.org+dwmw2@merlin.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Kv57MHqHG7nVqfo34K/1dXqS3gN+E9qxOgm5+bccZv8=;
        b=MpSxbF84SYqrjiPBec6eex1V1jRzAK18R4VRCPbB1qwE/oWaAlbENJ+goLaKj7ig8f
         r7AtxHm0VuBaz/y8SqILv526cKb2uQAf937+w9xNNE2VphM5u929FJ8W/mRU8ClYB+oV
         BL7Is1d4ERte9GxxrAIaMgwhi2pCPh1TQu13o1Z1gxPjXPOj7SNeN9Gct8YHV9Xhk/7T
         RbvYECuT+vvney8qwcQIxFrR1/vA7NiOw9PkiLw+ConC73wc+MTsdN2QYEUnyJD4Pu7l
         CieHhjNGKO5cFALFd3kYwlQb3GtAg7nlhj1OJRUQrv57ce4yr9jS8iWc4BJcVKKC4k9G
         Dyxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Kv57MHqHG7nVqfo34K/1dXqS3gN+E9qxOgm5+bccZv8=;
        b=UCCGI+ucuU4GAu3ICWwQyYBiuLO/jIzziFFTDkR1j4UKOgFZ2gRIWJ08sD0ecWkL4J
         1oJu7JpGoa4i0c42YXyzuWcvzE2z/hrGDTefaYU/jHfmbd23/Ghj26cAIqQvGjsdH7j6
         8M0pgKHxR6XSJjIM/vcwQcHWhvx9toaJlo0On2OTbWu0pHcr/jc+gQuML+6u+6S58slT
         vCji3uLGMhYTCcwpcr9DzeKFK+4KUG4yfmDzyMLPV3nUe2FuYG+cDW6DFxbxUfrxqHOy
         JDGOduDozLMTZ7oMU4qgx+CnjR1/eZG8Pw/oqsuASCDNyBvwORlMw9ZbIMW1PaaDLjjy
         2zpg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530dLbdRPmmr2PxhGlJyAeXvvmtdMJbakuuQyB6JNmY6cutGAlmC
	hJ+sgOEnrfRdg0BoOic+dbw=
X-Google-Smtp-Source: ABdhPJx6xDzCETHCz4SWEtyevQgsEn+UB4clhchSU2apDKdWmarrbyvyC1JT4CT5PnxBDy/50V2Vug==
X-Received: by 2002:a19:4b57:: with SMTP id y84mr12237937lfa.214.1589227462095;
        Mon, 11 May 2020 13:04:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9397:: with SMTP id g23ls214972ljh.7.gmail; Mon, 11 May
 2020 13:04:21 -0700 (PDT)
X-Received: by 2002:a2e:8296:: with SMTP id y22mr7651400ljg.194.1589227461141;
        Mon, 11 May 2020 13:04:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589227461; cv=none;
        d=google.com; s=arc-20160816;
        b=Lcwkw2rN53wJ5urvQ5MFBG+l8a5WDQ3JWey1Jm1ZUX5fC4Atja1VH8dK1EGG2v2pN1
         KxGMXmkTR+r4VjuLxsd9rM7lnBkmsnstP0H+XjOv3M2lftVGWKUqHUm/mZh5BToNhQaS
         eereXcPTC8iSOS9i4x49IQsxnNzrP/BhkAMOj0xI82BU0wfxDuXclR9Uw3TI7wuLEkvb
         5wgjq02rDfYkf0xNtexgvAav+XfrwQKSpW9BNfMZRc+lKREMd74Gidh5BEFNVwNiMt1a
         X1zAH3uj+eVkN6hHfbVU108h/eI48FeVQ44BZinDgfkIMOw4bEW6/BXki+O09rXoICeh
         rpxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:date:cc:to:from:subject
         :message-id:dkim-signature;
        bh=JiHNW+dt6gJoKNHPDf13WbJaNXhMyS/kizDEchhsjbQ=;
        b=B8Dde3UY0WSxVFiFVacZWjvw7xgH98IBQwgU7sGeIq/kg6luqKjYpXsulEf1kJ36Zs
         ZQIr6ABwb+3iOhEKYPWa/JS3pO0LVtiIHtPY0Oz9jzcGNjN5SNcOzC3wl/g3rnm7yDna
         hnSpwPet2cNgzYYzE2Z7UKDguEtjZUEearL72cVnHxpP58kEIkuyw3WxNynyJ2ATN/Om
         qmiO/dsGhbe1M9Bb4sBzlL25q93RQVnMDzxudRIK9PMjXly8SHYy9a+2r9QRfzw7Fb07
         jGeFuGp4EqAE2f1wD4BDTu825jY6hjdjw5BJkfpC9nOlgsdpOsqm+NhbJ1U+Qv4lOdwf
         3hTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=ZDuddt6I;
       spf=temperror (google.com: error in processing during lookup of batv+9a60fdb68fc57490c064+6105+infradead.org+dwmw2@merlin.srs.infradead.org: DNS error) smtp.mailfrom=BATV+9a60fdb68fc57490c064+6105+infradead.org+dwmw2@merlin.srs.infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id z12si253789ljk.2.2020.05.11.13.04.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 May 2020 13:04:15 -0700 (PDT)
Received-SPF: temperror (google.com: error in processing during lookup of batv+9a60fdb68fc57490c064+6105+infradead.org+dwmw2@merlin.srs.infradead.org: DNS error) client-ip=2001:8b0:10b:1231::1;
Received: from 54-240-197-236.amazon.com ([54.240.197.236] helo=u3832b3a9db3152.ant.amazon.com)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYEeC-0000hx-PZ; Mon, 11 May 2020 20:03:33 +0000
Message-ID: <7fa3a927ff63ca2f6587cfbac0ac76d2c11c4b5f.camel@infradead.org>
Subject: Re: [PATCH] x86: support i386 with Clang
From: David Woodhouse <dwmw2@infradead.org>
To: Linus Torvalds <torvalds@linux-foundation.org>, Nick Desaulniers
	 <ndesaulniers@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
 Borislav Petkov <bp@alien8.de>, Arnd Bergmann <arnd@arndb.de>, Dmitry
 Golovin <dima@golovin.in>,  Dennis Zhou <dennis@kernel.org>, Tejun Heo
 <tj@kernel.org>, Christoph Lameter <cl@linux.com>,  "maintainer:X86
 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin"
 <hpa@zytor.com>, Al Viro <viro@zeniv.linux.org.uk>, Josh Poimboeuf
 <jpoimboe@redhat.com>, Masami Hiramatsu <mhiramat@kernel.org>, Peter
 Zijlstra <peterz@infradead.org>, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
Date: Mon, 11 May 2020 21:03:28 +0100
In-Reply-To: <CAHk-=wh8zOnTN17XcGfnfihGgM5R5XG71qP+V54iLqBgZON4hw@mail.gmail.com>
References: <20200504230309.237398-1-ndesaulniers@google.com>
	 <CAKwvOdmspKUknbzDn9kY2jMgkFw=Ktvst0ZtwambDOfybqJGWw@mail.gmail.com>
	 <CAHk-=wif=_ZomkWJAmQRCUAMHQ72V3NEQ-OteiPE56K7KoSjbQ@mail.gmail.com>
	 <CAHk-=whhCBvjXtRiFM2JEZ4XyBmuPprvdo5tpPVBqUhkRszxiQ@mail.gmail.com>
	 <CAKwvOdn06jCe_FhKiF_wSQavytVVD++RXD-bHbMdqnEA-wO-9w@mail.gmail.com>
	 <CAHk-=wh8zOnTN17XcGfnfihGgM5R5XG71qP+V54iLqBgZON4hw@mail.gmail.com>
Content-Type: multipart/signed; micalg="sha-256";
	protocol="application/x-pkcs7-signature";
	boundary="=-cdXGRM+YWpZhbOONDEia"
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2
Mime-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <dwmw2@infradead.org> by merlin.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: dwmw2@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=ZDuddt6I;
       spf=temperror (google.com: error in processing during lookup of
 batv+9a60fdb68fc57490c064+6105+infradead.org+dwmw2@merlin.srs.infradead.org:
 DNS error) smtp.mailfrom=BATV+9a60fdb68fc57490c064+6105+infradead.org+dwmw2@merlin.srs.infradead.org
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


--=-cdXGRM+YWpZhbOONDEia
Content-Type: text/plain; charset="UTF-8"

On Mon, 2020-05-11 at 13:01 -0700, Linus Torvalds wrote:
> On Mon, May 11, 2020 at 12:52 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> > 
> > Interesting approach.  Researching __builtin_choose_expr, it looks
> > like it was cited as prior art for C11's _Generic keyword.
> 
> Well, the thing that made me think that __builtin_choose_expr() would
> work is that unlike the switch statement, you absolutely _have_ to do
> the choice in the front end. You can't leave it as some kind of
> optimization for later phases, because the choice od expression ends
> up also determining the type of the result, so it isn't just a local
> choice - it affects everything around that expression.
> 
> But clang still doesn't like that "qi" constraint with a (non-chosen)
> expression that has a "u64" type.
> 
> I guess we can take the stupid extra cast, but I think it would at
> least need a comment (maybe through a helper function) about why "qi"
> needs it, but "ri" does not, and why the cast to "unsigned long" is
> needed, even though "clearly" the type is already just 8 bits.
> 
> Otherwise somebody will just remove that "obviously pointless" cast,
> and gcc will eat the result happily, and clang will fail.

I'm also mildly concerned that LLVM will start to whine about the 'ri'
case too. It's odd that it doesn't, even when GCC does.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7fa3a927ff63ca2f6587cfbac0ac76d2c11c4b5f.camel%40infradead.org.

--=-cdXGRM+YWpZhbOONDEia
Content-Type: application/x-pkcs7-signature; name="smime.p7s"
Content-Disposition: attachment; filename="smime.p7s"
Content-Transfer-Encoding: base64

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG9w0BBwEAAKCCECow
ggUcMIIEBKADAgECAhEA4rtJSHkq7AnpxKUY8ZlYZjANBgkqhkiG9w0BAQsFADCBlzELMAkGA1UE
BhMCR0IxGzAZBgNVBAgTEkdyZWF0ZXIgTWFuY2hlc3RlcjEQMA4GA1UEBxMHU2FsZm9yZDEaMBgG
A1UEChMRQ09NT0RPIENBIExpbWl0ZWQxPTA7BgNVBAMTNENPTU9ETyBSU0EgQ2xpZW50IEF1dGhl
bnRpY2F0aW9uIGFuZCBTZWN1cmUgRW1haWwgQ0EwHhcNMTkwMTAyMDAwMDAwWhcNMjIwMTAxMjM1
OTU5WjAkMSIwIAYJKoZIhvcNAQkBFhNkd213MkBpbmZyYWRlYWQub3JnMIIBIjANBgkqhkiG9w0B
AQEFAAOCAQ8AMIIBCgKCAQEAsv3wObLTCbUA7GJqKj9vHGf+Fa+tpkO+ZRVve9EpNsMsfXhvFpb8
RgL8vD+L133wK6csYoDU7zKiAo92FMUWaY1Hy6HqvVr9oevfTV3xhB5rQO1RHJoAfkvhy+wpjo7Q
cXuzkOpibq2YurVStHAiGqAOMGMXhcVGqPuGhcVcVzVUjsvEzAV9Po9K2rpZ52FE4rDkpDK1pBK+
uOAyOkgIg/cD8Kugav5tyapydeWMZRJQH1vMQ6OVT24CyAn2yXm2NgTQMS1mpzStP2ioPtTnszIQ
Ih7ASVzhV6csHb8Yrkx8mgllOyrt9Y2kWRRJFm/FPRNEurOeNV6lnYAXOymVJwIDAQABo4IB0zCC
Ac8wHwYDVR0jBBgwFoAUgq9sjPjF/pZhfOgfPStxSF7Ei8AwHQYDVR0OBBYEFLfuNf820LvaT4AK
xrGK3EKx1DE7MA4GA1UdDwEB/wQEAwIFoDAMBgNVHRMBAf8EAjAAMB0GA1UdJQQWMBQGCCsGAQUF
BwMEBggrBgEFBQcDAjBGBgNVHSAEPzA9MDsGDCsGAQQBsjEBAgEDBTArMCkGCCsGAQUFBwIBFh1o
dHRwczovL3NlY3VyZS5jb21vZG8ubmV0L0NQUzBaBgNVHR8EUzBRME+gTaBLhklodHRwOi8vY3Js
LmNvbW9kb2NhLmNvbS9DT01PRE9SU0FDbGllbnRBdXRoZW50aWNhdGlvbmFuZFNlY3VyZUVtYWls
Q0EuY3JsMIGLBggrBgEFBQcBAQR/MH0wVQYIKwYBBQUHMAKGSWh0dHA6Ly9jcnQuY29tb2RvY2Eu
Y29tL0NPTU9ET1JTQUNsaWVudEF1dGhlbnRpY2F0aW9uYW5kU2VjdXJlRW1haWxDQS5jcnQwJAYI
KwYBBQUHMAGGGGh0dHA6Ly9vY3NwLmNvbW9kb2NhLmNvbTAeBgNVHREEFzAVgRNkd213MkBpbmZy
YWRlYWQub3JnMA0GCSqGSIb3DQEBCwUAA4IBAQALbSykFusvvVkSIWttcEeifOGGKs7Wx2f5f45b
nv2ghcxK5URjUvCnJhg+soxOMoQLG6+nbhzzb2rLTdRVGbvjZH0fOOzq0LShq0EXsqnJbbuwJhK+
PnBtqX5O23PMHutP1l88AtVN+Rb72oSvnD+dK6708JqqUx2MAFLMevrhJRXLjKb2Mm+/8XBpEw+B
7DisN4TMlLB/d55WnT9UPNHmQ+3KFL7QrTO8hYExkU849g58Dn3Nw3oCbMUgny81ocrLlB2Z5fFG
Qu1AdNiBA+kg/UxzyJZpFbKfCITd5yX49bOriL692aMVDyqUvh8fP+T99PqorH4cIJP6OxSTdxKM
MIIFHDCCBASgAwIBAgIRAOK7SUh5KuwJ6cSlGPGZWGYwDQYJKoZIhvcNAQELBQAwgZcxCzAJBgNV
BAYTAkdCMRswGQYDVQQIExJHcmVhdGVyIE1hbmNoZXN0ZXIxEDAOBgNVBAcTB1NhbGZvcmQxGjAY
BgNVBAoTEUNPTU9ETyBDQSBMaW1pdGVkMT0wOwYDVQQDEzRDT01PRE8gUlNBIENsaWVudCBBdXRo
ZW50aWNhdGlvbiBhbmQgU2VjdXJlIEVtYWlsIENBMB4XDTE5MDEwMjAwMDAwMFoXDTIyMDEwMTIz
NTk1OVowJDEiMCAGCSqGSIb3DQEJARYTZHdtdzJAaW5mcmFkZWFkLm9yZzCCASIwDQYJKoZIhvcN
AQEBBQADggEPADCCAQoCggEBALL98Dmy0wm1AOxiaio/bxxn/hWvraZDvmUVb3vRKTbDLH14bxaW
/EYC/Lw/i9d98CunLGKA1O8yogKPdhTFFmmNR8uh6r1a/aHr301d8YQea0DtURyaAH5L4cvsKY6O
0HF7s5DqYm6tmLq1UrRwIhqgDjBjF4XFRqj7hoXFXFc1VI7LxMwFfT6PStq6WedhROKw5KQytaQS
vrjgMjpICIP3A/CroGr+bcmqcnXljGUSUB9bzEOjlU9uAsgJ9sl5tjYE0DEtZqc0rT9oqD7U57My
ECIewElc4VenLB2/GK5MfJoJZTsq7fWNpFkUSRZvxT0TRLqznjVepZ2AFzsplScCAwEAAaOCAdMw
ggHPMB8GA1UdIwQYMBaAFIKvbIz4xf6WYXzoHz0rcUhexIvAMB0GA1UdDgQWBBS37jX/NtC72k+A
CsaxitxCsdQxOzAOBgNVHQ8BAf8EBAMCBaAwDAYDVR0TAQH/BAIwADAdBgNVHSUEFjAUBggrBgEF
BQcDBAYIKwYBBQUHAwIwRgYDVR0gBD8wPTA7BgwrBgEEAbIxAQIBAwUwKzApBggrBgEFBQcCARYd
aHR0cHM6Ly9zZWN1cmUuY29tb2RvLm5ldC9DUFMwWgYDVR0fBFMwUTBPoE2gS4ZJaHR0cDovL2Ny
bC5jb21vZG9jYS5jb20vQ09NT0RPUlNBQ2xpZW50QXV0aGVudGljYXRpb25hbmRTZWN1cmVFbWFp
bENBLmNybDCBiwYIKwYBBQUHAQEEfzB9MFUGCCsGAQUFBzAChklodHRwOi8vY3J0LmNvbW9kb2Nh
LmNvbS9DT01PRE9SU0FDbGllbnRBdXRoZW50aWNhdGlvbmFuZFNlY3VyZUVtYWlsQ0EuY3J0MCQG
CCsGAQUFBzABhhhodHRwOi8vb2NzcC5jb21vZG9jYS5jb20wHgYDVR0RBBcwFYETZHdtdzJAaW5m
cmFkZWFkLm9yZzANBgkqhkiG9w0BAQsFAAOCAQEAC20spBbrL71ZEiFrbXBHonzhhirO1sdn+X+O
W579oIXMSuVEY1LwpyYYPrKMTjKECxuvp24c829qy03UVRm742R9Hzjs6tC0oatBF7KpyW27sCYS
vj5wbal+TttzzB7rT9ZfPALVTfkW+9qEr5w/nSuu9PCaqlMdjABSzHr64SUVy4ym9jJvv/FwaRMP
gew4rDeEzJSwf3eeVp0/VDzR5kPtyhS+0K0zvIWBMZFPOPYOfA59zcN6AmzFIJ8vNaHKy5QdmeXx
RkLtQHTYgQPpIP1Mc8iWaRWynwiE3ecl+PWzq4i+vdmjFQ8qlL4fHz/k/fT6qKx+HCCT+jsUk3cS
jDCCBeYwggPOoAMCAQICEGqb4Tg7/ytrnwHV2binUlYwDQYJKoZIhvcNAQEMBQAwgYUxCzAJBgNV
BAYTAkdCMRswGQYDVQQIExJHcmVhdGVyIE1hbmNoZXN0ZXIxEDAOBgNVBAcTB1NhbGZvcmQxGjAY
BgNVBAoTEUNPTU9ETyBDQSBMaW1pdGVkMSswKQYDVQQDEyJDT01PRE8gUlNBIENlcnRpZmljYXRp
b24gQXV0aG9yaXR5MB4XDTEzMDExMDAwMDAwMFoXDTI4MDEwOTIzNTk1OVowgZcxCzAJBgNVBAYT
AkdCMRswGQYDVQQIExJHcmVhdGVyIE1hbmNoZXN0ZXIxEDAOBgNVBAcTB1NhbGZvcmQxGjAYBgNV
BAoTEUNPTU9ETyBDQSBMaW1pdGVkMT0wOwYDVQQDEzRDT01PRE8gUlNBIENsaWVudCBBdXRoZW50
aWNhdGlvbiBhbmQgU2VjdXJlIEVtYWlsIENBMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKC
AQEAvrOeV6wodnVAFsc4A5jTxhh2IVDzJXkLTLWg0X06WD6cpzEup/Y0dtmEatrQPTRI5Or1u6zf
+bGBSyD9aH95dDSmeny1nxdlYCeXIoymMv6pQHJGNcIDpFDIMypVpVSRsivlJTRENf+RKwrB6vcf
WlP8dSsE3Rfywq09N0ZfxcBa39V0wsGtkGWC+eQKiz4pBZYKjrc5NOpG9qrxpZxyb4o4yNNwTqza
aPpGRqXB7IMjtf7tTmU2jqPMLxFNe1VXj9XB1rHvbRikw8lBoNoSWY66nJN/VCJv5ym6Q0mdCbDK
CMPybTjoNCQuelc0IAaO4nLUXk0BOSxSxt8kCvsUtQIDAQABo4IBPDCCATgwHwYDVR0jBBgwFoAU
u69+Aj36pvE8hI6t7jiY7NkyMtQwHQYDVR0OBBYEFIKvbIz4xf6WYXzoHz0rcUhexIvAMA4GA1Ud
DwEB/wQEAwIBhjASBgNVHRMBAf8ECDAGAQH/AgEAMBEGA1UdIAQKMAgwBgYEVR0gADBMBgNVHR8E
RTBDMEGgP6A9hjtodHRwOi8vY3JsLmNvbW9kb2NhLmNvbS9DT01PRE9SU0FDZXJ0aWZpY2F0aW9u
QXV0aG9yaXR5LmNybDBxBggrBgEFBQcBAQRlMGMwOwYIKwYBBQUHMAKGL2h0dHA6Ly9jcnQuY29t
b2RvY2EuY29tL0NPTU9ET1JTQUFkZFRydXN0Q0EuY3J0MCQGCCsGAQUFBzABhhhodHRwOi8vb2Nz
cC5jb21vZG9jYS5jb20wDQYJKoZIhvcNAQEMBQADggIBAHhcsoEoNE887l9Wzp+XVuyPomsX9vP2
SQgG1NgvNc3fQP7TcePo7EIMERoh42awGGsma65u/ITse2hKZHzT0CBxhuhb6txM1n/y78e/4ZOs
0j8CGpfb+SJA3GaBQ+394k+z3ZByWPQedXLL1OdK8aRINTsjk/H5Ns77zwbjOKkDamxlpZ4TKSDM
KVmU/PUWNMKSTvtlenlxBhh7ETrN543j/Q6qqgCWgWuMAXijnRglp9fyadqGOncjZjaaSOGTTFB+
E2pvOUtY+hPebuPtTbq7vODqzCM6ryEhNhzf+enm0zlpXK7q332nXttNtjv7VFNYG+I31gnMrwfH
M5tdhYF/8v5UY5g2xANPECTQdu9vWPoqNSGDt87b3gXb1AiGGaI06vzgkejL580ul+9hz9D0S0U4
jkhJiA7EuTecP/CFtR72uYRBcunwwH3fciPjviDDAI9SnC/2aPY8ydehzuZutLbZdRJ5PDEJM/1t
yZR2niOYihZ+FCbtf3D9mB12D4ln9icgc7CwaxpNSCPt8i/GqK2HsOgkL3VYnwtx7cJUmpvVdZ4o
gnzgXtgtdk3ShrtOS1iAN2ZBXFiRmjVzmehoMof06r1xub+85hFQzVxZx5/bRaTKTlL8YXLI8nAb
R9HWdFqzcOoB/hxfEyIQpx9/s81rgzdEZOofSlZHynoSMYIDyjCCA8YCAQEwga0wgZcxCzAJBgNV
BAYTAkdCMRswGQYDVQQIExJHcmVhdGVyIE1hbmNoZXN0ZXIxEDAOBgNVBAcTB1NhbGZvcmQxGjAY
BgNVBAoTEUNPTU9ETyBDQSBMaW1pdGVkMT0wOwYDVQQDEzRDT01PRE8gUlNBIENsaWVudCBBdXRo
ZW50aWNhdGlvbiBhbmQgU2VjdXJlIEVtYWlsIENBAhEA4rtJSHkq7AnpxKUY8ZlYZjANBglghkgB
ZQMEAgEFAKCCAe0wGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMjAw
NTExMjAwMzI4WjAvBgkqhkiG9w0BCQQxIgQgdflaWpmn+qUJODJVDhQoU/fVIgQOYaDjbn+p3VjF
8rIwgb4GCSsGAQQBgjcQBDGBsDCBrTCBlzELMAkGA1UEBhMCR0IxGzAZBgNVBAgTEkdyZWF0ZXIg
TWFuY2hlc3RlcjEQMA4GA1UEBxMHU2FsZm9yZDEaMBgGA1UEChMRQ09NT0RPIENBIExpbWl0ZWQx
PTA7BgNVBAMTNENPTU9ETyBSU0EgQ2xpZW50IEF1dGhlbnRpY2F0aW9uIGFuZCBTZWN1cmUgRW1h
aWwgQ0ECEQDiu0lIeSrsCenEpRjxmVhmMIHABgsqhkiG9w0BCRACCzGBsKCBrTCBlzELMAkGA1UE
BhMCR0IxGzAZBgNVBAgTEkdyZWF0ZXIgTWFuY2hlc3RlcjEQMA4GA1UEBxMHU2FsZm9yZDEaMBgG
A1UEChMRQ09NT0RPIENBIExpbWl0ZWQxPTA7BgNVBAMTNENPTU9ETyBSU0EgQ2xpZW50IEF1dGhl
bnRpY2F0aW9uIGFuZCBTZWN1cmUgRW1haWwgQ0ECEQDiu0lIeSrsCenEpRjxmVhmMA0GCSqGSIb3
DQEBAQUABIIBAEsXX480PE9NZGgrS3qyeUcR7MeKbFZbpPcfiUiqCXfPzwz7snV7EsOkh6W9rz8y
12lZSN5JrN9Fc4rIQITE8ZjNxOkhgZWO2ZRATHcilZLweqajLFpFO7S2aPhXRreDQSyGrdR7uno4
0oozIYAdW5I4g4jBmRZ5MydqjGGe/g5IkOWDkVTdaoLrIcxQj66ss1qrd+AAbCJOqt1Xfy0rWWja
012enCmvhd+7KbUj9tTm1BPVZw9U9vvM34jGgRg5psTMvGdBFf52a5H7im6EgsVFlguOgIOk1OJi
bNa1Oy1qnyHKvejXbKXylSvadsb7m6+fHOaqAhAXEv/Ia8ovb6AAAAAAAAA=


--=-cdXGRM+YWpZhbOONDEia--

