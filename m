Return-Path: <clang-built-linux+bncBDV2D5O34IDRBOUORSCAMGQECBONDNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63e.google.com (mail-ej1-x63e.google.com [IPv6:2a00:1450:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A82F36989C
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 19:43:23 +0200 (CEST)
Received: by mail-ej1-x63e.google.com with SMTP id c18-20020a17090603d2b029037c77ad778esf8715931eja.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 10:43:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619199802; cv=pass;
        d=google.com; s=arc-20160816;
        b=0cw9iPkrAWONDXXrrAb/BEekuKkFHgMi0MDv53O3k/LwIVwMuxRPwzh+VfCf9Yk/O3
         OTY8alZnaeO1NtUXco4BQUP9pksAfgnSMYYidW27ubp45ZjOzBkl9T96KorW07EFd39i
         32zQNdog6FaDjM+LATfe1sIZXJAmsKQ0P9Tk70Ue6EJ0c2tR1X6B7SpEWWBaI5/+VOmd
         92nyI4Z64hTKYvOp+waWBSBmGbVZesXY7mqGGxGYbsgGgmX1pj8SkUnN1oytw5S5RuXJ
         lET6f8jvBUAgIP2871zmwGvHiyGzv/ew/5BOplTOu6mHTG790a6hjqhA79fCl8bYZbK0
         3v3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=U0mBj0Vv+nKrkQ0Q0ZT4+ZcuXzCq5iGUXrTmoxbcNC8=;
        b=u/+UjX4LAy6E/HNx2HrnrvYSjrPW0BVYt92LuaRX3XT+Uw+xh5ZdtXGlEvxJB4eSFg
         kY48sr3ZW2jyRfmYL6kBTJYxr9SefTvzZN+sxw/p7fs1x6pAl+SiuR+oqMde/ZvTJGUX
         AeYIneBJK9Q+ZRDDFUYeTc1GkXIusFisJo4jCStbK5yOQdSgWGeaizRTfx1+tQoFMXLA
         ISnSooB03oFNYzA6gWRxup/+kFeiYfZmBq5GrqUb8kd3AhInQDa0Ys9bacdQCyL3zfqW
         5zXWPQoju4YQ90pC/odh2O+pk3ewbEoM9ZEDtDI7avfb0Ymx3J6m/f6HpoiAiScSlVEe
         Z8NA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=fFdDv8CW;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=U0mBj0Vv+nKrkQ0Q0ZT4+ZcuXzCq5iGUXrTmoxbcNC8=;
        b=QOD/LvHH4gJM7j9R5ZqhplCTxsIhBqcNdT9qMyampKdaU6o0fjc6MaF7tcNKmuy7w+
         XiBcYj9QbTy7sVVi0OLsRUKs/ahkilEM/MS7bLG4ZQ2nX/TYdqLnVOFy+tEyULq4MeR3
         8c5OWHRfLkGF2wTwjdm5ipx0/ISDAX41Cfy9+chEW9xdAc7fcJ56vW41B4EbZhZE0hEm
         bIGTxBZhd+OGML+c+wvkjTimHn2nKkMrzqtNkJBnaFY/Mb/HYwagISGMCSPsv6dVtu2v
         vroQK3EBeF8SeVNzV7mR3d6Rbeh4BH3zDs4Tv9WGmM7Ha9WTEWI70+g+zy5ke60uovzo
         lvIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=U0mBj0Vv+nKrkQ0Q0ZT4+ZcuXzCq5iGUXrTmoxbcNC8=;
        b=nBTdpwK/FZNEpUNdiUpFwQmiSmA/HAozRc7y97x3vGpiUqZOpJ2UruY+kvAP+4wHX8
         LiVXtZ6mVHXI4J9L8kd/mvtDwXDci4YP+S+6ptKRfwYLmDltVBp1z488B6f9Jh0a3YPJ
         79Dbi1BmPmN3eLKl6e5wzgFg3/yREAEoMQGxvtt1Jh26SOQLJcMWsvAiKXUhjdItPCCo
         x6Y22sjUOQJ3UjUYYeFh/V0NBsK6gidM5M7Ei2NxnIRlAnR+9h4HCU7rD3fUbrxKPy4S
         4M8lnlHKz/WLY3uza1DCzLqnLbJeQK3vyad4A16fZKP0NwpXIpTtgEREjus+1GOYVMhk
         C5CA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532F4hvVEeqPGTsbZ7Xi3CRCC3pWOStwp1A2DhXoB46fTVJuaNP9
	eILi5Ynl053Z5U6guTEKdVw=
X-Google-Smtp-Source: ABdhPJzc+dSEbKNUQa0jjNzw1Bwj0nHyda/FODrcbvoop8pkvebYiVl3CnxYNEzmVbLuoRhuHwyR4Q==
X-Received: by 2002:aa7:d2d6:: with SMTP id k22mr5739585edr.9.1619199802809;
        Fri, 23 Apr 2021 10:43:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:4d10:: with SMTP id r16ls4872296eju.8.gmail; Fri, 23
 Apr 2021 10:43:21 -0700 (PDT)
X-Received: by 2002:a17:906:a155:: with SMTP id bu21mr5506005ejb.400.1619199801930;
        Fri, 23 Apr 2021 10:43:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619199801; cv=none;
        d=google.com; s=arc-20160816;
        b=dHiSnzQEKTMI0O9uviNumQp5OzdfBBFhXoM9WlkCb2Mv/u5m3/CImwQwkVsSqnvcQA
         aM13ajQRV/uy37UU8QopqJV60Wm56ImagZAB4fPWE+m7rPtvmVD0Hj4HS3PooMtqp5gs
         rT2Nzsmz9lMOgvVHDyK+NPoiih8xRGclN8K2eRhSOe5StO0OdxPyTr0dEWooO2JYldON
         elUXWbJ2+Oj6VmIU5Jv7AGIIzZ/5bv5L9kIXysRPyex0bV4OJQFMOcuhZshvUpd1G/Yb
         hbY23DfFx9BZ875H9w5rlmUcoasKsypQVgvqe2Fl6l6GSxJz0qIM54iD9+aQUBZOv/sY
         VKDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=D07Myy5xgLJyaySINjmTXcck3i4ZrKKFxHv5lMNfn/o=;
        b=OuA/v3XFXB6ZPSk5s77rcZXf5cFMKa2ocOCIoLz6KDle/CwOnYT84uQsg951t6eQDh
         3eE1n6cDENX5aUlKpIkr1hQyGT1IQf+U/54T4gFSpaATm/W7ogcPHKiDw2Wi9g/5AkXR
         ob6Q1IfPhqV3Yv6/+8mNl3uP/QhgiqgrlVQAhfFWIV+yF0W40mvfegBNtrDf32wWHX2K
         57TbCfgSUdgqEmnJPOaKtz5slLtBpnoVK4/OX4x6+rXrFZfK1QNRY24FgVK5npPg9Aq4
         31w1+iI6HUSszxevvSMya1/RkhRMDRiCDavNBohWWWygkdmjhmKi4YGPHAv+8BOqhNZ+
         IKhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=fFdDv8CW;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from desiato.infradead.org (desiato.infradead.org. [2001:8b0:10b:1:d65d:64ff:fe57:4e05])
        by gmr-mx.google.com with ESMTPS id r21si869507ejo.0.2021.04.23.10.43.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Apr 2021 10:43:21 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) client-ip=2001:8b0:10b:1:d65d:64ff:fe57:4e05;
Received: from [2601:1c0:6280:3f0::df68]
	by desiato.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
	id 1lZzpi-0022YX-7X; Fri, 23 Apr 2021 17:43:14 +0000
Subject: Re: ARCH=hexagon unsupported?
To: Arnd Bergmann <arnd@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: "open list:QUALCOMM HEXAGON..." <linux-hexagon@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Brian Cain <bcain@codeaurora.org>, linux-arch <linux-arch@vger.kernel.org>,
 Guenter Roeck <linux@roeck-us.net>
References: <CAKwvOdngSxXGYAykAbC=GLE_uWGap220=k1zOSxe1ntuC=0wjA@mail.gmail.com>
 <CAK8P3a2DCCjOq+sB+9sRM7XrtnkromCs_+znv3dehqLiYFDQag@mail.gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <fa0bed95-5ddf-ecad-0613-2f13837578c3@infradead.org>
Date: Fri, 23 Apr 2021 10:43:11 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a2DCCjOq+sB+9sRM7XrtnkromCs_+znv3dehqLiYFDQag@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=desiato.20200630 header.b=fFdDv8CW;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as
 permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

On 4/23/21 2:36 AM, Arnd Bergmann wrote:
> On Fri, Apr 23, 2021 at 12:12 AM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
>>
>> Arnd,
>> No one can build ARCH=hexagon and
>> https://github.com/ClangBuiltLinux/linux/issues/759 has been open for
>> 2 years.
>>
>> Trying to build
>> $ ARCH=hexagon CROSS_COMPILE=hexagon-linux-gnu make LLVM=1 LLVM_IAS=1 -j71
>>
>> shows numerous issues, the latest of which
>> commit 8320514c91bea ("hexagon: switch to ->regset_get()")
>> has a very obvious typo which misspells the `struct` keyword and has
>> been in the tree for almost 1 year.
> 
> Thank you for looking into it.
> 
>> Why is arch/hexagon/ in the tree if no one can build it?
> 
> Removing it sounds reasonable to me, it's been broken for too long, and
> we did the same thing for unicore32 that was in the same situation
> where the gcc port was too old to build the kernel and the clang
> port never quite work in mainline.
> 
> Guenter also brought up the issue a year ago, and nothing happened.
> I see Brian still occasionally sends an Ack to a patch that gets merged
> through another tree, but he has not send any patches or pull requests
> himself after taking over maintainership from Richard Kuo in 2019,
> and the four hexagon pull requests after 2014 only contained build fixes
> from developers that don't have access to the hardware (Randy Dunlap,
> Viresh Kumar, Mike Frysinger and me).
> 
>        Arnd
> 
> [1] https://lore.kernel.org/lkml/04ca01d633a8$9abb8070$d0328150$@codeaurora.org/

There is no current gcc C compiler in the 3 locations that I know of to look.
The one I tried is v4.6 and it is too old to work with current makefiles.

-- 
~Randy

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/fa0bed95-5ddf-ecad-0613-2f13837578c3%40infradead.org.
