Return-Path: <clang-built-linux+bncBDYJPJO25UGBBV4NXD6AKGQEDH2VF7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A3A529309A
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Oct 2020 23:36:24 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id k9sf1157338ybf.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Oct 2020 14:36:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603143383; cv=pass;
        d=google.com; s=arc-20160816;
        b=UXbTAfWiDhuwqYxRr5BMnAwlPUYeM4hVROf0j4BjhYYjM0LJ5xABeIMN7RT/x9jlTm
         4YE/jF7aXD1uBEFqP1AA9hKubiv6xygbNzhJazMTX3WHdGWtMjDyY2U6qHwkfrp8gIKG
         WKETBu445wiHhvvpk+yUPyimIed8aPbvXQsNd9AIEdD7fLEJgOEAtRgrTut7exgD0n2U
         xfKR91zIdjF73lPRl3p8FxfiyH7LBIUx8NNs5t11gshKSjW1YAFMkVHzDIg0D0tjObrH
         fUiMxNF6m3vTMx1MTYDjq10aZ34pt7+3qShndJ00bDGY3qFxdHLVjiJY3/bJ2w4ENBZF
         2TqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=vIXy7XcFn7M3jQkoiT6wICjepGeGn9fVvG8TYgo4pKY=;
        b=hyYBcSZzEhS5aIf/vc6gPEKqsfje7GjsQM93ont1HMLSxopPbgkr/ljKd4ExqD6LZs
         F07VWVmilQMCzpxZNmzQSfuO+m73mbmjfpMtmLSCEsD4WhmrFsXlpJpQkq2BULRzlHV5
         5xMYnLEVjepVFUSATJCx0D3iafYJbzKuqLuGiIAdBRIYa+T+zxCNOczTv0Olddwuz7i2
         A2eotEKEvZVufv9bIw0vt/Bt5bu+AlEb0iNY0inOImIbA50Ck/yL5r0KR5TQVvaEnrsX
         aIIKEKsPCFZFl0PrW2tlr8zkBJoXj/iJw77X3jbjLEDooe33IRm/0l7k/mHp6FIN0Mj/
         WCdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vLNvAP1L;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::e41 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vIXy7XcFn7M3jQkoiT6wICjepGeGn9fVvG8TYgo4pKY=;
        b=Iz1WbH/fNyN1p2VaJNL4ZWUhG84cSwHmfXa+RR8mdQRMn8hdIhBgf0T35avYzXMftF
         rAeBuDb+SgyuBuhyrs1mg64egnwoa53Hln5FCLsfyCMCWHRBc4cWoA5O7c25xAnmvcvR
         OXONFRpkQwpdZ/olVKsE2PbBKl0g6vAAbW9V6kvNUsBpML9ToJ3o6FJULR03UIO4jnhU
         4QtOa5UZ5n7pV71CEody5pS04ahMVW+zo7yM9WxNqZw2naMVYPbcza8Lvdzh3bgn5NYL
         c/GjKdRwTWBDnlmarASnq5gaNoE9R8kvan91HAkcaefZBfCnazPO5Ogyk2PD1mEEPJ27
         QTPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vIXy7XcFn7M3jQkoiT6wICjepGeGn9fVvG8TYgo4pKY=;
        b=MiajE5R1CnqoieAC2yPauz5uG+HWcVv2qPaAN36ll3aF/2ZquaHi3Nn+sD8KHUCNoo
         vVpftHoFfxy7JfQkEFxClocEFWo2EZReXKXFtg/Rh9iG6NEh3dxsVxYc1QE6txHnd8aS
         N0UmpRDKHieg1oZZCTY8E11RznQ1aKMaVdPBiHhIZE7Y/UbsFsDyCicboDTz9yJvEsY/
         cmhv4IqzbekuoXgj4DjYGoH/x6iPzoB8uXvyjhdk3bjQ8uKgU1M4RI5MObAM+rQqFf9N
         gB69YPi62qRduZ0EZdl2rBKHQ8xaRKIBcFdMfs+o1KGwWYcnWquCmkGiIkoZeuVHB/B2
         6sjQ==
X-Gm-Message-State: AOAM532ZEULCE7H7KXtx+OlQF8k3UUET5XEvEoPNGGwedgAjqtROuRv3
	jFj33s1VwWY3GSR76uyRGzI=
X-Google-Smtp-Source: ABdhPJx/QQLPI0G8GJgo+Kn5GyKzUy5M8M043xM6PLg1payZ2o77xUAhbOrsYXssxGugUI864ixCVA==
X-Received: by 2002:a25:854f:: with SMTP id f15mr1863733ybn.134.1603143383336;
        Mon, 19 Oct 2020 14:36:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2689:: with SMTP id m131ls580058ybm.7.gmail; Mon, 19 Oct
 2020 14:36:22 -0700 (PDT)
X-Received: by 2002:a25:cfc1:: with SMTP id f184mr2040638ybg.498.1603143382841;
        Mon, 19 Oct 2020 14:36:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603143382; cv=none;
        d=google.com; s=arc-20160816;
        b=VFNTsO6iJMHll5/3hV6T3qn9VyL3Cz6LLqSpt7IQEKiBr4B+AnugIc2cpOzVPgcnfF
         ztZWuVKdTTGFLel/KxJ/EbclxZUDjMbH1qlldegCrR2lJy+eACGHcajSpql9Gyor45bh
         FIC29ZgCdKcoVM6NjcPHjjzOmjDBfoGofINaHlTCI2l8DpJuywa9e3MOrnh4Hr1PIDcU
         FyHSUOU4aYl1a+xe1AjkEQbQl2fY+IkNq0ekcslktFYaBFiQxM3HTr+9Pqvgqt+E7e4j
         aLnqCnJThM4S+lzqXTnubl6lIET0nnocemXMsbhMCAzo2c/CpJF8yoZbnC97MrNKqVMG
         +Wog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Zt0sW14NGbSPkIAsGgDnuPTZkg50rAzFOa2c71N8N40=;
        b=BJGrdTjPfHxYI2LgrBdizPVs0BF0q7chBxyVpuy808YnAtFzu6k/97/ZfM4/YTFUIe
         nWvGnMelkRxHxehFecV3ZjvhyBTdTuvHBlM1hapM5cKUzWGiLK4kR/aPEW6R3cf/VuoF
         rRGuwH8JNWNmY81driM2RcU9irk58OmG8hR1L1d8jaW2c7UpQpCY+t63aVrSSZ33ZyaS
         oe+X7CghkBOg3YO02f6RtxCjdVBgfk9ywFs51lHOeNqa9VO903KLkgH9NNjtQsQhxcZ6
         MMsO422r/P0KIdv9x6PBhfSEb1lImRI0bDPwx1WEY9+vhJ/m+RWi+r33DpVdZlLNuyB3
         UDxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vLNvAP1L;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::e41 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com. [2607:f8b0:4864:20::e41])
        by gmr-mx.google.com with ESMTPS id s7si128817ybk.3.2020.10.19.14.36.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Oct 2020 14:36:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::e41 as permitted sender) client-ip=2607:f8b0:4864:20::e41;
Received: by mail-vs1-xe41.google.com with SMTP id s15so803668vsm.0
        for <clang-built-linux@googlegroups.com>; Mon, 19 Oct 2020 14:36:22 -0700 (PDT)
X-Received: by 2002:a05:6102:1144:: with SMTP id j4mr1772628vsg.39.1603143382267;
 Mon, 19 Oct 2020 14:36:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOd=0nOhK4KoLb1_Jni5u3ENDx10QeAxfYcSbtFQs77FxAw@mail.gmail.com>
 <30b7bea6-1135-609b-f1e5-a4f243e1dcc1@roeck-us.net> <CAKwvOdmnr0qqJTg+cU5KJ2-nJQgTY-8AraZQHXZUw0KNZKE4fg@mail.gmail.com>
 <c461496a-1ea4-4d44-4913-950cabcd3e31@de.ibm.com>
In-Reply-To: <c461496a-1ea4-4d44-4913-950cabcd3e31@de.ibm.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 19 Oct 2020 14:36:10 -0700
Message-ID: <CAKwvOdnn=i_Jg4B5o4sh2mRNGY9aH1piXoBYwEB4E3PpWZM5bw@mail.gmail.com>
Subject: Re: s390 - buildroot + qemu
To: Christian Borntraeger <borntraeger@de.ibm.com>
Cc: Guenter Roeck <linux@roeck-us.net>, egorenar@linux.ibm.com, 
	Vasily Gorbik <gor@linux.ibm.com>, Joel Stanley <joel@jms.id.au>, 
	Ulrich Weigand <Ulrich.Weigand@de.ibm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, linux-s390 <linux-s390@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vLNvAP1L;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::e41
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Mon, Oct 19, 2020 at 3:55 AM Christian Borntraeger
<borntraeger@de.ibm.com> wrote:
>
>
>
> On 17.10.20 01:40, Nick Desaulniers wrote:
> > On Fri, Oct 16, 2020 at 4:18 PM Guenter Roeck <linux@roeck-us.net> wrote:
> >>
> >> On 10/16/20 4:11 PM, Nick Desaulniers wrote:
> >>> Hello all,
> >>> I'm working on integrating the latest release of buildroot (2020.08.1)
> >>> into our CI for ClangBuiltLinux.
> >>>
> >>> https://github.com/ClangBuiltLinux/boot-utils/pull/25
> >>> https://github.com/ClangBuiltLinux/boot-utils/pull/26
> >>> https://github.com/ClangBuiltLinux/continuous-integration/pull/327
> >>>
> >>> I'm seeing the following error from QEMU:
> >>> KASLR disabled: CPU has no PRNG
> >>> Linux version 5.9.0-00732-g04ed4527465f (ndesaulniers@<myhost>) #30
> >>> SMP Fri Oct 16 15:49:05 PDT 2020Kernel fault: interruption code 0005
> >>> ilc:2
> >>> PSW : 0000200180000000 000000000001779e
> >>>       R:0 T:0 IO:0 EX:0 Key:0 M:0 W:0 P:0 AS:0 CC:2 PM:0 RI:0 EA:3
> >>> GPRS: 0000000000000001 0000000c00000000 00000003fffffff4 00000000fffffff0
> >>>       0000000000000000 00000000fffffff4 000000000000000c 00000000fffffff0
> >>>       00000000fffffffc 0000000000000000 00000000fffffff8 00000000008a75a8
> >>>       0000000000000009 0000000000000002 0000000000000008 000000000000bce0
>
> Do you have more information? If not, any chance to run objdump on the kernel
> and check what instructions do you have aroung address 0x1779e
> [...]

Is PSW the program counter?
/me skims https://www.kernel.org/doc/Documentation/s390/Debugging390.txt *woah*
Is there something more specific I should be running than:
$ s390x-linux-gnu-objdump -Dr vmlinux | grep 179fe
because I get lots of hits for that, but not 0x179fe.

In fact, the first symbol starts at 0x100000. Unless this is a failure
in the image decompressor?

>
> > Hopefully qemu supports something newer than Z900?  Or can we change
> > arch/s390/Kconfig:255 to use a different arch? Is arch9 == z900???:
>
> Newer QEMUs do support up to z13, so I think this is not an issue as long
> as you have an uptodate qemu.

$ qemu-system-s390x --version
QEMU emulator version 5.1.0 (Debian 1:5.1+dfsg-4)

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnn%3Di_Jg4B5o4sh2mRNGY9aH1piXoBYwEB4E3PpWZM5bw%40mail.gmail.com.
