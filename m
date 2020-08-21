Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBHNAQD5AKGQEWFRKFUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id BED3C24DF4F
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 20:19:10 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id n1sf1740839ion.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 11:19:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598033949; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q6KMuIovDO4nogP+jpijFmRqPswnvUALw0qSuZ74eeTDGNXw6BfMZX3YUHxLZzBFQs
         IFmnd32wQHwk+2xxydfxhV/Dk2nurkQ1y/WCPZqYc95kPHDkvD057LHyuro0HE5wDSHk
         lF+JqhkudvaqWG8g2c2R9EfVqA6BS668oRemK1HOjIREmshswe6JkCY0WpymIHGlK7kW
         nxh0WdJbNd7FRVjhy0q7zgveb/I30pgpD5rQyTffSLF5diP9DmO4/EZE8Z24LFirgIil
         FtinbIxq2JBn0vRNfvOmKmCduxSMYP/bg0tOrcabux0V9plJFWX2V3wkt605Bh1TWVpm
         A7lQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=FedvL3TDUxzxhXOmwN8wPnWhRCQYWnsgreYoPBpLsnw=;
        b=x48y2nxmbt0JuTFd15alsqgWnKwDtqPBHxl/32kyfVSJC2QwtWBU/6tWQI0T2iRduk
         iaQfku/gZ0CS/x3MGI1G2T1xm2NUawEtJQSw6FB0WSyUIbuaTRr4BR1Pp10ykdLEeqyv
         VXGiXaZpokU9qMm8hmkvRPJslU9VdMOo7jD1pd+nPjuBiXfGdUalZXXhGJnZJvgNTHke
         WxQfFB7kenlJEqImHJnPH4OW4OVH5vBfVsvrzF5o09s4fPswrOaevzSIbFRA1dl5GGmr
         3ZzrFZ6sqyQ6yCXVBkCcjVZxjKWgr7yFpE1m25lgKjqZGEVUco6JU4Uy1tGBDnfJOwWV
         kzhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=kMpbG4iR;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FedvL3TDUxzxhXOmwN8wPnWhRCQYWnsgreYoPBpLsnw=;
        b=hKLd5Om539A7pC2q4Bfc5CrWYGMfyFPU8s20CH2dn7erPKOoWWDhCo3G80Ipo9srES
         qb1NAxP1jBKQMJqHEZ6vehP7u87e3gLCz4ICr0wJnoQiGE0+oOyZD++Ohjd5wyq23A9s
         7ON/G2bdXyAki+HaB7MQ+X+EM5T6WA0FkK/5OYYcrmApynoklXHlG+DdK7l9WLatixPF
         a4JnQ2zLcMegWEyVM2G1FJMzM+M+qsi6hjH6nR3HMUtT+OrLURenIK6/tmhemxqf0WjY
         j7QaVIv3C6U4r/VCrJZ86safCXw4QtpOjhlklDyttw/xCHqTJ9sMgeycJ280kFInFkzt
         s+wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FedvL3TDUxzxhXOmwN8wPnWhRCQYWnsgreYoPBpLsnw=;
        b=NyHikvABw9UcikftvCST6ekmIqp7E/xL2j9Qud+CIDxZ5QBtNMInuuBvsAmc1rwTl+
         iYy6wm9V4w/SqQs/AVO93Wt8Ji25TQzuTzD5snNCVy3f91i4nit4A0iJGKeO/kFwEHOa
         I9c/NEnSY41NZZAiI3aqIhV9Moz87xeum7gj35H2QkmXBtqBI75K8hGRFVZXTBFV86Ep
         QTKF8othIZhwiY7zCdNDdCrFdaI7zOKZxtW/BL6UFceWU6ZlGKyqqgPh9b4r43cJVEjE
         eX2Wnpq9Dh56eN/ldj4Hur3Nt7DuGzRQPsXPcr5/eGCQLZ/+nwJDNnmgvu2FrrwYOTvd
         41KQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533wa7PTj82fxUakC5KZtFXh96Zj5nvSfpWIcCdPAIhUxuOofP/t
	Z4LECTiUXTdxTQh203bxAKo=
X-Google-Smtp-Source: ABdhPJxnwGWMHHgVUFi7JJBGVLpYC9pvdjzc69rRRZpO57XCPu383hCafommnfp0L/sZyhbaSoFcow==
X-Received: by 2002:a6b:b654:: with SMTP id g81mr3292239iof.116.1598033949187;
        Fri, 21 Aug 2020 11:19:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:9b0b:: with SMTP id j11ls327554iok.2.gmail; Fri, 21 Aug
 2020 11:19:08 -0700 (PDT)
X-Received: by 2002:a6b:6204:: with SMTP id f4mr3267438iog.56.1598033948869;
        Fri, 21 Aug 2020 11:19:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598033948; cv=none;
        d=google.com; s=arc-20160816;
        b=YzoP5rkx6RPuY0ck+GYRkYCvYTwyXK5ajGB34auCDiu6HvpBBM7Hlc7ftkO9K2aZ7Q
         c5vlkZ/vQ5Aha+erPuE68PCvrEOSKayaGiiuHBsH8S227zede1tnRuhZW1cscgvf5MWP
         9QAQBQDhpBKh2iQiwl91UiKJnFyPHivkdK/Oaw+xJS5yEUeQx83zY0XdyJuWgyHBMcU6
         /W6w5/YeYtlSujfo6UGSAjfwhTVWzzMId30X/x0foxFjvKe7uRLM4FeFgdbZAEZ99FRt
         miQcehoWHGuejCAYGKvimREV7dlNbMu/wD5UynssdrtuMMd7xRXAnHPYyBBDVEw7w6Lv
         EVIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=1UNk1AGGEwhw+lM3t9AwUmUxfOaOF1KAPiPeob9V2WI=;
        b=pUTPiXTCD6tbS5jSUwKE3t8ooMW4mNAw63d5IvSI8/wYDSU6UKHe/sC0AKcxSGyv8o
         VjxuVsDfxpkc6QbEjzSzBxxGjjlNpom/TCBmnQTC6qrmomaLpImSLNe4+WMVZw1MpKv7
         YyqvK9TOV61p/xLv4ZDIZKUUKpvFJVkVB4mlpvrPWFM8eYRYg6EbsDLBxsaI+CFy/OOJ
         /pvy5isMI9AbTzRYiF+tbK2WUbDkp4gVLebmIPNARfpDirnbTEXh1OF0mljU0oCpEAom
         Fizd5+8kCRMI2GajHy874lJZzBAf4IXAJmvSvDsalMKdLWmaYdNsqnYCNrzIckuY0HRu
         staw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=kMpbG4iR;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id h11si133616ilh.1.2020.08.21.11.19.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 11:19:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id h2so1257377plr.0
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 11:19:08 -0700 (PDT)
X-Received: by 2002:a17:90a:c0f:: with SMTP id 15mr3438069pjs.193.1598033948161;
        Fri, 21 Aug 2020 11:19:08 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id d13sm3316084pfq.118.2020.08.21.11.19.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 11:19:07 -0700 (PDT)
Date: Fri, 21 Aug 2020 11:19:06 -0700
From: Kees Cook <keescook@chromium.org>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 32/36] x86/boot/compressed: Reorganize zero-size
 section asserts
Message-ID: <202008211113.F872C40ED@keescook>
References: <20200731230820.1742553-1-keescook@chromium.org>
 <20200731230820.1742553-33-keescook@chromium.org>
 <20200801014755.GA2700342@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200801014755.GA2700342@rani.riverdale.lan>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=kMpbG4iR;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Fri, Jul 31, 2020 at 09:47:55PM -0400, Arvind Sankar wrote:
> On Fri, Jul 31, 2020 at 04:08:16PM -0700, Kees Cook wrote:
> > For readability, move the zero-sized sections to the end after DISCARDS
> > and mark them NOLOAD for good measure.
> > 
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >  arch/x86/boot/compressed/vmlinux.lds.S | 42 +++++++++++++++-----------
> >  1 file changed, 25 insertions(+), 17 deletions(-)
> > 
> > diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
> > index 3c2ee9a5bf43..42dea70a5091 100644
> > --- a/arch/x86/boot/compressed/vmlinux.lds.S
> > +++ b/arch/x86/boot/compressed/vmlinux.lds.S
> > @@ -42,18 +42,16 @@ SECTIONS
> >  		*(.rodata.*)
> >  		_erodata = . ;
> >  	}
> > -	.rel.dyn : {
> > -		*(.rel.*)
> > -	}
> > -	.rela.dyn : {
> > -		*(.rela.*)
> > -	}
> > -	.got : {
> > -		*(.got)
> > -	}
> >  	.got.plt : {
> >  		*(.got.plt)
> >  	}
> > +	ASSERT(SIZEOF(.got.plt) == 0 ||
> > +#ifdef CONFIG_X86_64
> > +	       SIZEOF(.got.plt) == 0x18,
> > +#else
> > +	       SIZEOF(.got.plt) == 0xc,
> > +#endif
> > +	       "Unexpected GOT/PLT entries detected!")
> >  
> >  	.data :	{
> >  		_data = . ;
> > @@ -85,13 +83,23 @@ SECTIONS
> >  	ELF_DETAILS
> >  
> >  	DISCARDS
> > -}
> >  
> > -ASSERT(SIZEOF(.got) == 0, "Unexpected GOT entries detected!")
> > -#ifdef CONFIG_X86_64
> > -ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18, "Unexpected GOT/PLT entries detected!")
> > -#else
> > -ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0xc, "Unexpected GOT/PLT entries detected!")
> > -#endif
> > +	/*
> > +	 * Sections that should stay zero sized, which is safer to
> > +	 * explicitly check instead of blindly discarding.
> > +	 */
> > +	.got (NOLOAD) : {
> > +		*(.got)
> > +	}
> > +	ASSERT(SIZEOF(.got) == 0, "Unexpected GOT entries detected!")
> >  
> > -ASSERT(SIZEOF(.rel.dyn) == 0 && SIZEOF(.rela.dyn) == 0, "Unexpected run-time relocations detected!")
> > +	/* ld.lld does not like .rel* sections being made "NOLOAD". */
> > +	.rel.dyn : {
> > +		*(.rel.*)
> > +	}
> > +	ASSERT(SIZEOF(.rel.dyn) == 0, "Unexpected run-time relocations (.rel) detected!")
> > +	.rela.dyn : {
> > +		*(.rela.*)
> > +	}
> > +	ASSERT(SIZEOF(.rela.dyn) == 0, "Unexpected run-time relocations (.rela) detected!")
> > +}
> > -- 
> > 2.25.1
> > 
> 
> There's no point in marking zero-size sections NOLOAD -- if the ASSERT's
> passed, they won't be present in the file at all anyway.

That's a good point, yes. I will adjust this.

> The only section for which there might be a point is .got.plt, which is
> non-empty on 32-bit, and only if it is first moved to the end. That
> saves a few bytes.

Yeah, also this. :) I will try it.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008211113.F872C40ED%40keescook.
