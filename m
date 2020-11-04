Return-Path: <clang-built-linux+bncBCIO53XE7YHBBA7GQ76QKGQE5AFK2IY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED612A5AEE
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Nov 2020 01:17:09 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id z16sf6009711pgg.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Nov 2020 16:17:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604449027; cv=pass;
        d=google.com; s=arc-20160816;
        b=uAZ9zlXXZmcG8wKr35Ih/LLSpXl7EVxIKWDA/z1AGTgTs6US0HkMc22cPp6AhDSp7n
         u08zJS9Sxn2xSmpZ2U9zvam+60OazfxBkj/K++l7CZDODJwqEpYHj26rJ0u27lYIy1vg
         57gqK9hp4jiIOVGzXVYbdjH8U7NzBvMUdXyCh3+5KEmqhApPGGi9ZLVT8VvTP5OC515w
         /cLBXSUTed/OERFZr+QZQ3jgMqyHjJkapLF1WCBgp+ybNRpdNP6qotUPjGFu5o63/Fri
         uepcqFM5qe92tE7mcZbi6TtoBe+lR/g8k6ZKd6EQiB1OF0K8jqnJuLmMQDEdMzUoa9uE
         Be6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=/w9Is92FdtKiXoLeL43CW/hpfRuGHYLJJgp6iv2/arw=;
        b=h29hHRd1fPP/hseQTSmrMhDnbRt9qimuo51dHhNhxVHl1M9SwGGtYA5864CJn/di7F
         n0qnpo1TFOgXfO6Zhn1IQGsPzeQCB5TMly8XT7ay7tX+7YYhLehWeFBzbCKVOekqYXSO
         NdGVEimk9YRl0JoyIrdLyJMPqTqEwtl8G+EG3z8kjvN9wVe6/0BUZrBlEd+CVbyR6PHp
         IFX1K2EbmnnGo6UjeqUPIGM2mdJufzTrN4eBKtgii9JJOzC7HgLyO6Geu3RIgGnVv/F7
         9vQZVCF2jSwOCLpZdOnLAI3YxV0gSq+QtrXwJXgzr5Gxv3/vQWNwXyu69GDhr3IzAbMY
         29dg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LmBQY7CZ;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/w9Is92FdtKiXoLeL43CW/hpfRuGHYLJJgp6iv2/arw=;
        b=iglDOuYoJEeSPugteUYEwLcjFAxtOGcWmYpBVoVEQeD5xbjEWXDLul4NewV8TZOG81
         efPxkPy9YrWy/GdKIGBZYM7k/1vFKkC1lC8jsdZO+06XbCfsdSdDTjroy32o0Jh5C86y
         9xfOZAwYara0p6F/Ijvv7X1ELO5jHV++o3q834TTAUtmqi1d05Ix/Up9A+oZ7zKWL9WD
         XOIOIQFG4jfAJn+yuQgh8BBq2EYHEtoQJZEhkE35leRnlMx3FTQ/zKgcLBNeZ67Nentx
         VOaIFvKzqsjttZH28LfGcFO+36A2/RLDSmqficgPaHS91nbT+dmXpdw78kczPVDl1mxd
         Bo3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/w9Is92FdtKiXoLeL43CW/hpfRuGHYLJJgp6iv2/arw=;
        b=eeEW3AtHjWQeyRB9u87VL/FYZDm3j+H65kYjwl6tTRyxFIMX8pXkngAmMDOFYouX46
         NgefH3xjX+Xl54SffCmoRdHvtGHMqa8eRXXRdmJX3K3ZD7muAjSmFwVZxZh/ieyk/Ot5
         dPb9ES8sOJWFnB/yFrYsA/PFutz3foJ1Ltif1kF0hsNt8GffG/J8beWSOa2RQQIWQ5XH
         0jkhxLJI1xwsZb+5d4k/quc33PpRZ5ZMCatdPBDpeV8fsRQ6XyPFCauNd9czFAApUQ3a
         /6GjvVG6EdKNFQANDC4hXtSIDI0tp0rAz3jUPo6dvVqSTFhFDnxHQvUVeihdh3DMjFzz
         sXzA==
X-Gm-Message-State: AOAM532UeozjCW3Nm98+nF1c95Je7T+4vU+dADbmUb0NyoeEmgyVkq54
	0eRCAPf2nNdcJZBV0MTf5z0=
X-Google-Smtp-Source: ABdhPJzdtWr+kjlMmDDUdyd6eOL4kMLqgVyanqFqYWFf7Upu+HDHWTEmN1ul9D+acBFYKAkwdgmoMQ==
X-Received: by 2002:a63:5154:: with SMTP id r20mr19556374pgl.340.1604449027257;
        Tue, 03 Nov 2020 16:17:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8d98:: with SMTP id v24ls131896plo.4.gmail; Tue, 03
 Nov 2020 16:17:06 -0800 (PST)
X-Received: by 2002:a17:902:8d8f:b029:d0:cc02:8527 with SMTP id v15-20020a1709028d8fb02900d0cc028527mr27812700plo.33.1604449026534;
        Tue, 03 Nov 2020 16:17:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604449026; cv=none;
        d=google.com; s=arc-20160816;
        b=JPjOjPGV010xfi9NVaWq4//cuWRbL//qr9ZMDBe3R3Gb+cUgs/iCqZoIXG2BBHTOFH
         2PN+JLOuhfCp6sjyRHTcB9Vq96DJp7sgKA4/ElHq8oPtalpXifsG6pAI2dcDTrAfJdRR
         ZCSMbocNEI2soz88hhhRSFoqJtWFYQWvJR4lX36nhRtemPLACUO55S1D7J92GchYrtLZ
         oZevQZcyKhf9CNUmBGQcmXX8xlB1ckLU9CqkDQDuata80fetzNlVIO9XmzkjZfJhi/ch
         Mn4aPtc24k2bHE+11aILg2V0HJeIWZcoWKqWA/039aLBUidsBbgWim/b59ryCHGYV51L
         he+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=o7VW5Grk+dEY5JWkUUhDhbgHVtmwCHyugEP4jZ8aPsI=;
        b=FLn414tvqC8a8U4xrKAQkoS8+aLl+8EZuK7o9LUtATzC4Cu9LyQlHJECS5ybkYr00W
         G0jC5AC6yOlVyUJHzMQ4LEbbr6l7gDDLlhqLqqBsrAcMeRxg/Wrj7d9ahk5hZz66YGwQ
         YVd9uMPa2uoqpeKo99kjHFR+hu7rxlV7xcQBX66QeOb1mNM6TH/BotaXmhJDKqMcSRST
         ZkRbOQHzmOCVbKrlfTAhdSkREQbUENgms2BhDQZewJ3UchdOUaslNG1LJQbMiVhTN8M9
         NiKVnLHhNxoeeyt+Gt18gHBMKvYt6ZxneAljh3vvC5uxEFLBX2VRtSAUmrbAmKde4rsm
         scqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LmBQY7CZ;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id a22si26318pfd.0.2020.11.03.16.17.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Nov 2020 16:17:06 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id i21so16504299qka.12
        for <clang-built-linux@googlegroups.com>; Tue, 03 Nov 2020 16:17:06 -0800 (PST)
X-Received: by 2002:ae9:e210:: with SMTP id c16mr21871175qkc.314.1604449025589;
        Tue, 03 Nov 2020 16:17:05 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id y68sm655321qkb.38.2020.11.03.16.17.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2020 16:17:05 -0800 (PST)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 3 Nov 2020 19:17:03 -0500
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	linux-toolchains@vger.kernel.org
Subject: Re: [PATCH] Kbuild: implement support for DWARF5
Message-ID: <20201104001703.GA2407187@rani.riverdale.lan>
References: <20201022012106.1875129-1-ndesaulniers@google.com>
 <20201104000016.GA2399651@rani.riverdale.lan>
 <CAKwvOdnFstgMa3c+=Vo=QtFYsABDekVeddcPmP=8Pn2bqWfxpg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnFstgMa3c+=Vo=QtFYsABDekVeddcPmP=8Pn2bqWfxpg@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=LmBQY7CZ;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Tue, Nov 03, 2020 at 04:05:36PM -0800, Nick Desaulniers wrote:
> On Tue, Nov 3, 2020 at 4:00 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > On Wed, Oct 21, 2020 at 06:21:06PM -0700, Nick Desaulniers wrote:
> > > Further -gdwarf-X where X is an unsupported value doesn't
> > > produce an error in $(CC).
> >
> > Do you have more details here? On godbolt.org, gcc does report an error
> > for unsupported dwarf versions.
> >
> > https://godbolt.org/z/G35798
> >
> > gcc does not seem to pass the -gdwarf-* options to the assembler when
> > compiling C source. For assembler, gcc will pass an appropriate option
> > depending on the version of binutils it was configured with: if the
> > assembler doesn't support dwarf-5 it can call it with --gdwarf2 for eg.
> >
> > If the user is using a properly configured toolchain it doesn't look
> > like it should be an issue to just use cc-option?
> 
> I wrote the base patch back in May, and didn't revisit until recently.
> I could have sworn the cc-option silently failed for the check
> cc-option does, which is /dev/null input.  I need to recheck that, but
> it doesn't hurt to simply include it for now, which I've done in a v2
> I'm about to send.
> -- 
> Thanks,
> ~Nick Desaulniers

This is giving me deja vu about the -gz=zlib option.

Didn't Masahiro fix the cc-option issue with
  4d0831e8a029 ("kconfig: unify cc-option and as-option")

The existing -Wa,-gdwarf-2 in the Makefile seems bogus, btw. GCC 4.9.0
at least appears to pass on --gdwarf2 automatically.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201104001703.GA2407187%40rani.riverdale.lan.
