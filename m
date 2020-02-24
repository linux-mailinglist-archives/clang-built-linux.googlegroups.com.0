Return-Path: <clang-built-linux+bncBCS7XUWOUULBBLXY2DZAKGQEJEFCQ3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc38.google.com (mail-yw1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E81216B1D8
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 22:12:15 +0100 (CET)
Received: by mail-yw1-xc38.google.com with SMTP id 14sf9108904ywg.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 13:12:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582578734; cv=pass;
        d=google.com; s=arc-20160816;
        b=DSprfUwnL4tchN2WmeHVd3JUttcVBF+oyJ1WFcsAuuVALXF0f2GvaAxJUs2rr6ppAg
         5ABkUIajDwN43cT2fNoGX2mB7gZn8MQKGAq71AXZh20lpR2JZtBqb2TDsAIKSzyDSCyr
         ccxsSS6qMQGUoTzDnl7JwuJdTcceVUGzgeED3p/0+whp+fk0fl6qIOih3QBX1UHu/5dR
         uyOysAwZhfOlN6m1MVpOU89xRZHSIUGsXKBh80ga5tGovtLmeeCQP8GLb0ZDsOcMs0pv
         i77VQOzonwalslZaQ3XIuGFEKTT4tXDiHlQ3gHQORfqGdBrxEU1sSn5Z00lSnEB/Gt4E
         hgAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=t++x9KLk3hcFso9uj4W8nozsrAOm/mpBzNumGL2TTV4=;
        b=QjU4MLiSPAemqPsgkmLopmbxOlWoWBZUVXGi1H5rjnwD0kbV8qhaze852abUe4bWWI
         RkidSzBRKXbMGDE2uk/ESbV+cqvEFi5JRWGAG7VjU8GdMpDvjIfNJDkco03MAxVdanIB
         cumW7sXd22iRhV1/dzV42F2xQfKWYJJQg3olOPmrYHF7ikjFjY0gjP+7vIveaQPuPv6D
         XRCvWFj9aHqRzcvW8xJrlQ+YzvTiM4aj03jQhy4tDC10ApEMANb7LRKL55Hbn+TqImgf
         vzDo2d4BDFvfnMHgp5zcREqcuCKbe1ieoKKrki3zqLFca4qOj8qMKBHGS75hP3cVAZQf
         TGbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SBZiUn5x;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=t++x9KLk3hcFso9uj4W8nozsrAOm/mpBzNumGL2TTV4=;
        b=jN4M1kpMyTpjA0gPC7xXpJmYQvyIw0oMvwSQEPjjhy21ysUl188V2DkyruQyLi+G3t
         wC848Cy0H7zijtkVmkJSobpEn2oMqwxVhIR0dM3SoJ+d87GrzlEnISMMl6xLrbYUYOs1
         iaCJUzFm0U9T7+RT319jIRym2RZWpQo60p42ju4IzBpuC/x3bw15Hl428dU5azo5205Y
         UtDWmE6DsWWvchu9IE6d1Dy+nSje6Q9pDiWbczFeJtS+gAeilg87yTuIFmSKNTJbQ3in
         Bdz87FFiP3wdoEx2jufI2THTQ9/IuuQYzvnKJjfLwG/En2CNGmJGfOe9pLvdbOj4V5Cd
         0LTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t++x9KLk3hcFso9uj4W8nozsrAOm/mpBzNumGL2TTV4=;
        b=KYiIYGd8d7yDOZZNJJ3812GmhowGJ419iSTtOXWcP858fysXmrAZm5BYtZdNAz2twO
         FwixRAcEyLB/bRySmBsn9Utw0jECGrIUm9rqqXems9oN4EF1btmZGY1vvwdSufRDfIPB
         0o3QsHOmGlanrmQQRBlDv0ilscOMdy1WNn87uUjoDT711v+exwcak70ODCaNA2R0GjdX
         Y9PQT3rkFQ8vmONZkuWNlnOx7Sp+CPzthoc6xujvhj37I3quaHeBwVFppggaL327eCL+
         eHYHJaXMVAfR3jJSVNQPeJiDh56exUs/5bhfGWuLpPFoSHb5ix7hIoX/XybPB76cLFYD
         vnWw==
X-Gm-Message-State: APjAAAWEKcdqCMMAs0KJtuR1hXJICtlCaozEYT8616To9Mn+D8RiSSD7
	6/dZcyvkKNjW6gUg2zmDX+U=
X-Google-Smtp-Source: APXvYqzu48527B5giTphysi6tjtZRoNKgecsw7XYVdr8473am4Qb69NzZNTkraSB0vcVrJ2BttgKQw==
X-Received: by 2002:a5b:b84:: with SMTP id l4mr49472041ybq.349.1582578734478;
        Mon, 24 Feb 2020 13:12:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:e905:: with SMTP id n5ls645131ybd.0.gmail; Mon, 24 Feb
 2020 13:12:14 -0800 (PST)
X-Received: by 2002:a5b:9cf:: with SMTP id y15mr3517973ybq.322.1582578734145;
        Mon, 24 Feb 2020 13:12:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582578734; cv=none;
        d=google.com; s=arc-20160816;
        b=WyV4eFii2JIK1TE4EJKnLWwMcLJvMwEV9GVWJtUc9KhTSLpJ6zmb1nz5kOemGpuGEr
         U6pIY9acljjwtL5581zwkWK5ihmkEqLuLPykoUS0yEajo4EkpA0rPlecyYTAh9NZys+T
         OVPvNscFmEbCU+W0m6+XW7A/BQW3YybcxREsOnyh01gY92gM3mfNaAy//w02e2Wttoyp
         Cwr5GVkHKywOB0DOB/xnPGsEq4wEPmVdga/4DtoZhwMFy823FGx5ur2UAUpi72pouEFm
         ZdFHczjB9thN9bou7MUshyeRiwvoPCgegrodrTH+O50YF10Luttx9veyte6lRIWYaBqR
         vJlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=dUAjplDFzu3ykSROh7BG5jWZWZQaw9t0lPRoNsXFBrw=;
        b=OueChx62jUaQFI5yloMai7LKAObcoTelkyxfSc3pBFGmF6LrJcc4XFzwG87AGKoNvj
         QA0HGH4By+EuHgD+BEwl4IiEJ0sm8dnLyNnucPag2GK34i0W3P3So6FxTbuXGBcLHC5c
         G9mrzwC6jAS7BgbLteXu+GdmW8PB2+ZcnnZc2uwTdPHqFrj1lx5UVZ11xCC/VZki4Ako
         D2e7gODlzLuf9pbq1IuD2texETtR5tzLWrReWZ2wBqdSxQVpFgDcQ2lQ7vA9zdOOGmsq
         UwhFlTXTl7d17NBm3SYkHlV8WE+MBrp4sGQ9sTbW988OykmaUPHi+ZAkY99TcOV3gqNq
         TopQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SBZiUn5x;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id e81si756155ybf.5.2020.02.24.13.12.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 13:12:14 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id d5so286080pjz.5
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 13:12:14 -0800 (PST)
X-Received: by 2002:a17:90a:d585:: with SMTP id v5mr1164717pju.4.1582578733019;
        Mon, 24 Feb 2020 13:12:13 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id g10sm14267981pfo.166.2020.02.24.13.12.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2020 13:12:12 -0800 (PST)
Date: Mon, 24 Feb 2020 13:12:09 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Borislav Petkov <bp@alien8.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Michael Matz <matz@suse.de>, Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH 1/2] arch/x86: Use -fno-asynchronous-unwind-tables to
 suppress .eh_frame sections
Message-ID: <20200224211209.3snqf7atf5h4ywcr@google.com>
References: <20200222235709.GA3786197@rani.riverdale.lan>
 <20200223193715.83729-2-nivedita@alum.mit.edu>
 <CAKwvOdniNba30cUX9QAZdVPg2MhjVETVgrvUUzwaHF70Dr3PrQ@mail.gmail.com>
 <20200224210522.GA409112@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200224210522.GA409112@rani.riverdale.lan>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=SBZiUn5x;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1041
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2020-02-24, Arvind Sankar wrote:
>On Mon, Feb 24, 2020 at 12:33:49PM -0800, Nick Desaulniers wrote:
>> On Sun, Feb 23, 2020 at 11:37 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>> >
>> > While discussing a patch to discard .eh_frame from the compressed
>> > vmlinux using the linker script, Fangrui Song pointed out [1] that these
>> > sections shouldn't exist in the first place because arch/x86/Makefile
>> > uses -fno-asynchronous-unwind-tables.
>>
>> Another benefit is that -fno-asynchronous-unwind-tables may help
>> reduce the size of .text!
>> https://stackoverflow.com/a/26302715/1027966
>
>Hm I don't see any change in .text size.
>> > diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
>> > index 98a81576213d..a1140c4ee478 100644
>> > --- a/drivers/firmware/efi/libstub/Makefile
>> > +++ b/drivers/firmware/efi/libstub/Makefile
>> > @@ -12,7 +12,8 @@ cflags-$(CONFIG_X86)          += -m$(BITS) -D__KERNEL__ -O2 \
>> >                                    -mno-mmx -mno-sse -fshort-wchar \
>> >                                    -Wno-pointer-sign \
>> >                                    $(call cc-disable-warning, address-of-packed-member) \
>> > -                                  $(call cc-disable-warning, gnu)
>> > +                                  $(call cc-disable-warning, gnu) \
>> > +                                  -fno-asynchronous-unwind-tables
>>
>> I think we want to add this flag a little lower, line 27 has:
>>
>> KBUILD_CFLAGS     := $(cflags-y) -DDISABLE_BRANCH_PROFILING \
>>
>> so the `cflags-y` variable you modify in this hunk will only set
>> -fno-asynchronous-unwind-tables for CONFIG_X86, which I don't think is
>> intentional.  Though when I run
>
>It is intentional -- the other case is that we're building for ARM,
>which only filters out the regular KBUILD_CFLAGS, so adding the flag for
>it should not be necessary. The cflags for ARM are constructed by
>manipulating KBUILD_CFLAGS. Besides it may or may not want unwind
>tables. 32-bit ARM appears to have an option to enable -funwind-tables.

clang (as of today) has not implemented the
-funwind-tables/-fasynchronous-unwind-tables distinction as GCC does..
(probably because not many people care..)

>>
>> $ llvm-readelf -S drivers/firmware/efi/libstub/lib.a | grep eh_frame
>>
>> after doing an x86_64 defconfig, I don't get any hits. Do you observe
>> .eh_frame sections on any of these objects in this dir? (I'm fine
>> adding it to be safe, but I'm curious why I'm not seeing any
>> .eh_frame)
>>
>
>You mean before this patch, right? I see hits on every .o file in there
>(compiling with gcc 9.2.0).
>
>> >
>> >  # arm64 uses the full KBUILD_CFLAGS so it's necessary to explicitly
>> >  # disable the stackleak plugin
>> > --
>> > 2.24.1
>> >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200224211209.3snqf7atf5h4ywcr%40google.com.
