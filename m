Return-Path: <clang-built-linux+bncBDYJPJO25UGBBF72YTZQKGQEA2J55DA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E64B189022
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 22:11:55 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id x25sf16438009pfq.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 14:11:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584479514; cv=pass;
        d=google.com; s=arc-20160816;
        b=iE4JLYlwMUsamCiXoOWqL2zJ4WYNExQ1iI425jXAhGWTJUpp61BcTJ+wXYV31XCVVx
         qkRa5lrMTw9/qoEzmH1NgKhO46TEc3T77ytPLK5iCyGzYq3xiIYqcIDihU9059wp4XG1
         X4bnRCBoF4x3IpZA9uI1fApu22PXmNfpVj+a9QghvCSbl2yvsikLEVBdIxdQW5bfS0sX
         N+wNCF2y5g8fxgnPJ3j4TSwdzQ/MxmhGdP330d9NAm+yZMUIbswOMKmtAzp4Nie8g8Do
         G6cUr1w6riDlZ597WYRiFJekrdY4qJ1lMJG4wU2sOMZ0lXik5JSa2ZbCqI5wiBLV3Afg
         bO1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=m7OTCG93mI9ZqeYfhFeW1f4nEXPeL/X7laUAT/W17O4=;
        b=UsabDZF8REyoTfrmDp5hLhKZt8MRNrE/a56WlZUAfRQ7AWWe1sPeYB/8KOewL6KIrP
         ON7rpByIjH0dyBNKD8UKmZnIm8ZAZMYa8jI70WDMw/1Xf5QLtkUTCFjmUFyqdWVcfPMg
         /Svz7qY41xyrSCOAzh/e8G0mrbd50rVI8opm6OYCztDISgjvYrY9e6RWs/NTXqJpFISW
         k4zvcoFO4ulpIOg0i+05vofQnMFjux2inFle0EaLz2t2aUVS/Om1KtvcCPs3vpmtPtVj
         jSAehQVu1xIWcZPAJ7aOjJBzXSn1m9kZf/P6DwxzLNQl4BkX9JrSydxBWNGSIEEQJg2w
         uNeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VTZpsTYM;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=m7OTCG93mI9ZqeYfhFeW1f4nEXPeL/X7laUAT/W17O4=;
        b=P15E9flJYE8VhM+oZAHg1U/ATefRhXVjVLroayrAUEozJdv6IIP0WxL6uJYEZAyTPS
         uErKNdKAQU/pSapYUgyaM5JZcrjo8JNvDquy0HgOlGZq/1VxGj7ViAyIUp1NQvceKwGH
         h4KRNbm7VMgvwbaBRGBq4aw62TpJfc78birrgneBMrwFu414D79oM0eSgdXReCFTtS9C
         DMdzQ5Tav4L2CJZfZFfZ0LDngV2U+h/9aGxmJ7ajR53bYB1MWucQvCKS6tna+4ZVab34
         BDhZo2Nt1HcsUqfiGKEQkyxxRCVR1bhC2K4g4rtowubJUJOPyU/0L8430DJ5JTBqKQGp
         iTLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m7OTCG93mI9ZqeYfhFeW1f4nEXPeL/X7laUAT/W17O4=;
        b=kxqEKxRgkkCH5NAJYU+GUlGi4SnOZ+1kPlG0KZOFed999IZtwLR71vcb8Vp/L1eTGp
         AEfg4dZUkzP8EpU/Iw8rJ1sJVK1xSMpFDHdFSLlRBNHqnoBxD3DsfshJNaw5dkgsQFH2
         wgjIV0v5bFDD3ujZmFDFdRNSUcwamzi8Y5f1e0nP0j+hL1A0DXFKsIKVQg54yShPKCVc
         24dHQ8+O2AGHG/6gMnp/wtZi1uCF5hFYOAACOWFdXWkgmo1svbKfGPIZObD4PUrxRnod
         XDFb1f9rLItKIRzFFeFCm+0KRlv+BRKvmxDdaNVLBtrIXqeBQYienaARvbxPLIdVNchl
         tdEw==
X-Gm-Message-State: ANhLgQ0XJgkKuGzgnQFnvkW4V1xhmijrafc1wPpLcAlwt67Mo5DtnvPb
	xENhMNCWTkInrKGCxS0t13E=
X-Google-Smtp-Source: ADFU+vvgWnHhj+PzQRqdHeapjjuCYLVa9wYRku2DI3Dhm3o6G/chXyiFVJSTknfi1GLyEIlelfXsLg==
X-Received: by 2002:a63:8f1a:: with SMTP id n26mr1136214pgd.355.1584479511527;
        Tue, 17 Mar 2020 14:11:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:de4b:: with SMTP id y11ls11168713pgi.2.gmail; Tue, 17
 Mar 2020 14:11:49 -0700 (PDT)
X-Received: by 2002:a63:6a49:: with SMTP id f70mr1181087pgc.246.1584479509517;
        Tue, 17 Mar 2020 14:11:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584479509; cv=none;
        d=google.com; s=arc-20160816;
        b=ujOx9+0jnCFjdmx+465XeyychxqXPJAjrEldjQlsOryw885GsABWTJn7dVhApQUKmk
         85Ye4AJEoXXWHKt61urjNpEfpBcgwjlS/2JjBFpN4qDO0EfjuZxpjUc86nMu4srS+UFH
         nNKBlKTNGv493yJcWDh5UOKI+6i9INHRmPj0h+/bkp5QmRoo2km6zra9Xe7ch3Mpi7YE
         oHrKNb5cwwFfHlAhQH2e+kTW50Ew55Wglgwe/5OWkSqv395MZjQGvigxc8faYF6vWxde
         H30lIwh4Ng7IZri4mfpOm5P7kEtdCfObL/3j6uyMKiwrjtybmGQ77HXswG/pVBTiDNEZ
         vP8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=IpcA0rjnYQm/sDxzA/eEsONlLPwAolwc51H8RE4vwZI=;
        b=SJZzPUqaIfasq8nZdjQiKmJ5C9Vq7TJopXNbYQjAW5jrBmikA7dRYLBP0I4+2fW7CY
         Jb13a/dWHNZCGBnVvll9ylkEP2kRyaKBmE/Knd7ntQ3PRrFgBA5b9+vK+P4pFATcm8n4
         cm2/i1spesvs4iVZdAQqz7d+YcSB/LQwT40kVa3XEahNfhAl5KBH7zx+kjVFtisH0zll
         v58+LCg4UD+PWj44geBPg3/7oo0a+8bXiCjJ7NZ8Qze4cYwrVBLDdHC0IqoRSVjapsMt
         pzUom5y7BdtRKCS4nvMq2fDU5lq5Di1kNOPgzdjWDvzNbIj5EqOi6Xr0/z8s3ompA8fk
         B96Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VTZpsTYM;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com. [2607:f8b0:4864:20::62a])
        by gmr-mx.google.com with ESMTPS id 59si245216ple.2.2020.03.17.14.11.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2020 14:11:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62a as permitted sender) client-ip=2607:f8b0:4864:20::62a;
Received: by mail-pl1-x62a.google.com with SMTP id m1so1966897pll.6
        for <clang-built-linux@googlegroups.com>; Tue, 17 Mar 2020 14:11:49 -0700 (PDT)
X-Received: by 2002:a17:90b:311:: with SMTP id ay17mr1187679pjb.27.1584479508713;
 Tue, 17 Mar 2020 14:11:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdmYqncnK7SBEi7P0ZSNTMi97XhkiOkqmHoCrWUeG-7GQA@mail.gmail.com>
 <DBBPR08MB4823894C5E0C67C7FF6F6DCDF8F60@DBBPR08MB4823.eurprd08.prod.outlook.com>
In-Reply-To: <DBBPR08MB4823894C5E0C67C7FF6F6DCDF8F60@DBBPR08MB4823.eurprd08.prod.outlook.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 17 Mar 2020 14:11:37 -0700
Message-ID: <CAKwvOdkR=wphdRX4Y406xcA2UFov57AzEN+XEdo4ifpojPaibQ@mail.gmail.com>
Subject: Re: help reviewing 32b ARM VFP assembly
To: Peter Smith <Peter.Smith@arm.com>
Cc: Kristof Beyls <Kristof.Beyls@arm.com>, Arnd Bergmann <arnd@arndb.de>, 
	"oliver.stannard@linaro.org" <oliver.stannard@linaro.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VTZpsTYM;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62a
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

On Tue, Mar 17, 2020 at 12:11 PM Peter Smith <Peter.Smith@arm.com> wrote:
>
> Hello Nick,
>
> I can check that the VFP opcodes match the coprocessor instructions and t=
he toolchain options, but I'm not sure I can do much from a "Is the right t=
hing for the Kernel perspective".

Perfect; the encodings matching was my primary concernt

> I don't have a lot of spare time at the moment so I'm reluctant to promis=
e anything more than I'll try my best.

Apologies, and I appreciate all the help.  Is there someone else at
ARM that you're thinking of tapping who can be more involved in
ClangBuiltLinux?  You're one hell of a contributor to lose, and the
loss is noticeable.

>
> Peter
>
> ________________________________________
> From: Nick Desaulniers <ndesaulniers@google.com>
> Sent: 16 March 2020 23:33
> To: Kristof Beyls; Peter Smith; Arnd Bergmann; oliver.stannard@linaro.org
> Cc: clang-built-linux
> Subject: help reviewing 32b ARM VFP assembly
>
> Hello folks,
> Stefan sent 3 patches to support Clang's integrated assembler for VFP
> on 32b ARM.  Would you be able to help review, or help find someone to
> help review these?
>
> https://lore.kernel.org/linux-arm-kernel/cover.1583360296.git.stefan@agne=
r.ch/
> --
> Thanks,
> ~Nick Desaulniers
> IMPORTANT NOTICE: The contents of this email and any attachments are conf=
idential and may also be privileged. If you are not the intended recipient,=
 please notify the sender immediately and do not disclose the contents to a=
ny other person, use it for any purpose, or store or copy the information i=
n any medium. Thank you.



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdkR%3DwphdRX4Y406xcA2UFov57AzEN%2BXEdo4ifpojPaibQ%4=
0mail.gmail.com.
