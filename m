Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBYPVQD5AKGQEGVVKI5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E6924E298
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 23:21:38 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id w4sf82508otb.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 14:21:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598044897; cv=pass;
        d=google.com; s=arc-20160816;
        b=RuGmJfZmlPRlNJYQ+2p5aFKRQBUA6yM/O4l2jSgFmUg7qzp5mFH+iQig9JnhkoUjqM
         fSn0v/l5nfS+Wau/xcYSI1eREUtsb40eZDHBPj54z9h5SGxjqn9WlOtmnL5dif2kGQqL
         zfSxgmkNY9qOFpCQuUFb+irVhhXFZ5HXnlAywExyW2zitymtPPzKDABkrTWc9zG4c3d4
         ME4Nth0iWVFsxXJ3MYdKr1gNLvbranhcR8qRyxiTxya7aZdMbArJRrB4/mE/2FBnvfO/
         Yckuwip560A8S4ogPEmAcAG4YtAf9CTS0AZDgwSsMc45ww0KXGsOLPTr629Elqz6z44c
         hcLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=4MnXSMC5co5jMbaEWFDoAXyh2a3tuT7f1p2P9XDx1Sg=;
        b=TaoDUciZTeThJJlfVfmJZi1Q82PcXHnebnb46sIELIzLt6zjFWc++5muHT6W/hzBVS
         Mvda54bbVVyxyhNaXarbuHsqmbAL6ZgrJ6mKaREoCfU/olCADi81yY4cGUXAqWrF5++i
         B69N3btcjqzwY5IHWuIX3xckypSHF+B9MPMXLVCdIPWpelFn8iv9v2ZTYuv7qgz7s3j4
         7Pz8k1xpv/r7GBoHMPZMTUMryqn0VSQqNGwNd0LK6amIN8IWtWEL3ZSSbgHwR28/VWGi
         seXke1/YgtNHAP1Z4CrAi3UABHCXHCVNsYprUQPbmXyNv5LWvEbWafZhS3v21VFf1SE1
         +y6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Z6d0JADM;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4MnXSMC5co5jMbaEWFDoAXyh2a3tuT7f1p2P9XDx1Sg=;
        b=hgXTJgfRnUUC+dXm/lV2D2ykMZNUS7ALinkHOzr1Df3pxTbt3DMbU03ug0InHOWslD
         mBesJDIgj5YMkmWdFx3WWrHlcL+hmZQSvEK/6VV+YowWEfXcdY75AGqwXVDErtl9WovK
         b1metSp5TPNXCLCCgzacFPPPC5SPiZTVsERKOvk0RoMEHS4JSMMUCD1tkA1OdmU9HFF6
         3GLNX1D8wclV5s17A0kNk5QqKh4LP8DzJ97rBEvNk23YK9oOowZOfgE9sfwGq90qQjAY
         64Q9Irj+7+jhnHdruxn9btphgTTnPmDDl91rPEDLVhjwYYuUGiVX0HogNdNiPkFsh2OJ
         flgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4MnXSMC5co5jMbaEWFDoAXyh2a3tuT7f1p2P9XDx1Sg=;
        b=MqLn8AGdiDeXuaW4vXcXqdLJ5KRMMzLBmEoNARj3Mmmz9kLIENZZEaTGz3kLHJ0EGs
         uJ/ESWJ21rcx2ffSsNpp62214Diiy2C2JivKYrj/GMObo4MAZarRo+oozMevlZ/otbCq
         b4EgU08hZ0a2Bi7qygcEYXL+kwth88kw2Uky1rx1Z0GVqcLaRZpPBASOPzeHUl8xcdcD
         LM/L1tQdDzSLAgcOw6T2fhQk4Sp0pKizUToUDkeaeUcQa77cAPpPNEmZeBmtYoL85Ef3
         BAkz0+oGefAdenbQi3hPm+Ln0AnocZvY+T2pb7vBFAXwrhScUpbqoAY7Y81cz+v4isNW
         iyAg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Bp93Y+2Taw9lSYZIVUcYtDDtWiGmsRbvv4aGjglAW44bLfs/U
	j91GYmg98+9fwQ1WcoA6Jhg=
X-Google-Smtp-Source: ABdhPJxbuj8CIlXpib0/sYaA1bh2HFo8GFmg+p3Vl30SvyEmsW9O+vNUMeKaIIrOCDZZRp9YTrVoPA==
X-Received: by 2002:a4a:9c49:: with SMTP id c9mr3771858ook.10.1598044897818;
        Fri, 21 Aug 2020 14:21:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:42c5:: with SMTP id p188ls725620oia.3.gmail; Fri, 21 Aug
 2020 14:21:37 -0700 (PDT)
X-Received: by 2002:aca:ed8d:: with SMTP id l135mr3092160oih.121.1598044897487;
        Fri, 21 Aug 2020 14:21:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598044897; cv=none;
        d=google.com; s=arc-20160816;
        b=so6pDipP61Yumiu19e3/CTOyfZCcRlFQ7MY1EMQnApzWWWl3cCcIZlod320orqs5KH
         hiZEWm1/0jKoa4TPCP8h8Cf2YGr0vfeLvkoq1qDg3q0A0ALp7gxcT7G+2WsZYrGmcVcF
         zMAk2Y/3TQ4L2ki9ukn55OKdEH6beO05GflxL34+j5QzLLDE3Clr0Jjyi8uTmkC2GCXY
         diy6nuU+kzMJ6L9fAlI+RPwNsB4DXQwVq+QYeVQ0N3fTFiFNJbWeq4a6N8JO50AA373G
         TZ7raS1O0nzlwmV2ICUXExcbi5aw6ol3Bvleucik/t3/ZrbnnW6Fn9KVjL6FAIvhPo6t
         V0sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=7zxJLsKDKPmlEOdAqEaMs/th95WQoPa5KmWk+Z1DjV8=;
        b=SAGf57l6Kxzkj2fKVNt+KSOUChWxR/dEfkM/F7WWln1l+SauhPZ0aQX3ihXjPYvqTC
         UAp+w493SpwqW5KKj2rhgbqwdAc8pUIrefgcdMBRUFK+Ya00ExucNMrmbe+WpIKU58yq
         4ranjagVUsRONqtgOKahVyyQfjsYAvr5d9HqSYVGLshoVG+poDzG1e+vyVmmFR+OHkHR
         RrBOuIiVjw5oHFOyrnDBW1vcdY+EgbBejbCAgUe8CYbhzXrUanrPdSXKM12iRHhldb69
         mr4hpGWcHGbKLNiRmxXHhWQ9/eyPsaXtXrxdli7O7X6qoXXpQz/Sws+ee/MWx1060u70
         1Cjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Z6d0JADM;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id r64si179128oor.2.2020.08.21.14.21.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 14:21:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id x25so1677089pff.4
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 14:21:37 -0700 (PDT)
X-Received: by 2002:a63:7550:: with SMTP id f16mr3613147pgn.118.1598044896892;
        Fri, 21 Aug 2020 14:21:36 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id m22sm2843446pja.36.2020.08.21.14.21.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 14:21:35 -0700 (PDT)
Date: Fri, 21 Aug 2020 14:21:34 -0700
From: Kees Cook <keescook@chromium.org>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Ingo Molnar <mingo@kernel.org>,
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
Subject: Re: [PATCH v6 27/29] x86/boot/compressed: Remove, discard, or assert
 for unwanted sections
Message-ID: <202008211421.47347CA42@keescook>
References: <20200821194310.3089815-1-keescook@chromium.org>
 <20200821194310.3089815-28-keescook@chromium.org>
 <20200821200159.GC1475504@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200821200159.GC1475504@rani.riverdale.lan>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Z6d0JADM;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441
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

On Fri, Aug 21, 2020 at 04:01:59PM -0400, Arvind Sankar wrote:
> On Fri, Aug 21, 2020 at 12:43:08PM -0700, Kees Cook wrote:
> > In preparation for warning on orphan sections, stop the linker from
> > generating the .eh_frame* sections, discard unwanted non-zero-sized
> > generated sections, and enforce other expected-to-be-zero-sized sections
> > (since discarding them might hide problems with them suddenly gaining
> > unexpected entries).
> > 
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> >  	.rel.dyn : {
> > -		*(.rel.*)
> > +		*(.rel.*) *(.rel_*)
> >  	}
> >  	ASSERT(SIZEOF(.rel.dyn) == 0, "Unexpected run-time relocations (.rel) detected!")
> >  
> >  	.rela.dyn : {
> > -		*(.rela.*)
> > +		*(.rela.*) *(.rela_*)
> >  	}
> >  	ASSERT(SIZEOF(.rela.dyn) == 0, "Unexpected run-time relocations (.rela) detected!")
> >  }
> > -- 
> > 2.25.1
> > 
> 
> When do you get .rela_?

i386 builds, IIRC. I can try to hunt that down if you want?

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008211421.47347CA42%40keescook.
