Return-Path: <clang-built-linux+bncBCIO53XE7YHBBJXW6T6QKGQEPVDTWSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A192C2D80
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 17:56:08 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id a24sf16176923pfo.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 08:56:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606236966; cv=pass;
        d=google.com; s=arc-20160816;
        b=GQEypAFnsD/sYqHpHREC9Z8jrjjr/yy+qcacOeF9L74RvhhQde1ILKbFHU+xSoz+3o
         n3YKEoM1OW3zrhtLfkkqb8MBeOuqxrhhMIOk5BF2LAYfYVtgdczekA2LvZf4RLyWn2KY
         0tmibhqQSUW68AhrzzI4AeMucqnsRRHvrBEIVwQm2AqGAKX8iPF0ubfNu2pMgfEikmAP
         oRnGBm63r70AW8vS/f3t55hU6vg6H4izqfn1/SmC45QfponiloQM6iHHarAcwXliQM+k
         RdWZLZzvj9xeXjBOEqKPOozr3RFf2sKYoWMt6QnFiW5G34kW0Z5OCvS2fnwna1Supty4
         B4/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=USoFV2TcE6fvEbye/hqgd7eahm2lUZ0qvAm5lh72AjM=;
        b=oiEofXZ2gCNwiVRrUErgZdKwhtlvMyoBZo5smX5IcyTlYjzDLb3S2tz92QiDYvMWh9
         h5LD9ezneLQxsX3ltj6/li2i55qVXgjKy0jUfAPcGYgfxXakGCwIWCIPhx6XW3h5727l
         uZit8C33Jboih28018OIxEsdVdsI5GNTY3DEI48COZ5R0vkqkHuST87PudWuA+aCAFLS
         DAsTbcgFCcfpPcrDSbNFyufm/BE436ZKl8PZbvyNv2JHvRXxEpF9+A+KnDkvmdoV0YyE
         MIvbPJ6+a4o7gRKYyoKaqX9wVLfe/osckxdygRL6SAbonrEDDnO53u+va8bFOE3Nk+P3
         MJqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t9uqfSPk;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=USoFV2TcE6fvEbye/hqgd7eahm2lUZ0qvAm5lh72AjM=;
        b=WI+iWqpA1/07ILotdbibNFmzrQb1YnadzFVxrQGqpgxuxABX6asPO9VJD11cE93PTG
         AiXwBgw3ne40ImxrK2b0n0dvk1BvMHv91vvN5dDGCVhfFxAqAfH1m5sd3LQf3VYF4vVL
         IfjJdAGK8TVG+OVgoV8QtYbSuioP49sE4AmQ7LmiCs3Q55uclrWt4leGRZTl+pb9XD7z
         l8GXf2AdZu9lfnLLXMO4wDHUro3pnzC5druEcOhDkbNf/0rVPdo0iRLRSxW5+znAhqat
         o337oKeaCRNMBZSJ2aTx82FaQqrH3tm9ixbN9JxW6QM8eYRPREezvQr53xIWBmwCQuVV
         yidg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=USoFV2TcE6fvEbye/hqgd7eahm2lUZ0qvAm5lh72AjM=;
        b=jR1JOUuSIXuM1Bvx7fWzkOOF4vDkHHcyy6R2ye27qrHfk6iPdDivKV+MXDVi4d7DGq
         Ddhj9p9BFshA93yEaglRhXd2igGklZTcgCjpMiXYFtJqK6G0pkEX5+EOdYkciE3u6Q1O
         qVzGJPar9BeHepm+9HzOqI2S/lQuKb1PrflLp8iJptdT5ZsIHIGcu5fFZ8buejhaPDF9
         SeNoALb4sqnJjG6EYEUIbHh+w3RBAKC6OVzaaMfV8UmbnDHwyalwau00gktHOMkfPMyV
         PdJd8e/VyKzoE2WNtQRoRVW11bPN5ewOTMpCInqUwhgMsezUJOOnnA2YYf6bYragVM20
         5MgA==
X-Gm-Message-State: AOAM5331qS2lWT59wrvQqdTVP1mEUMn/CQ/DCugg8jWM1HvY3e7VdaMJ
	AuQc6loqwkMByEC5HXAhFbg=
X-Google-Smtp-Source: ABdhPJx/umaZa0b7aDhz20l0hG7nzZFF90IFxzudJpgvYTOxA+GfG8mmyt8/s1eJKUB7KBc9v8Y3YQ==
X-Received: by 2002:a17:90a:6588:: with SMTP id k8mr6045323pjj.197.1606236966693;
        Tue, 24 Nov 2020 08:56:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:a503:: with SMTP id a3ls2363089pjq.2.gmail; Tue, 24
 Nov 2020 08:56:06 -0800 (PST)
X-Received: by 2002:a17:90b:11d3:: with SMTP id gv19mr5882901pjb.232.1606236966050;
        Tue, 24 Nov 2020 08:56:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606236966; cv=none;
        d=google.com; s=arc-20160816;
        b=H3m9b7AcJDpRETeMwF4ynwXLgHZWgr6HJSuxUC7EdekhdTuCYx3QSN4EgKponQ8R3O
         VUI+RmNsFAka9pohmsTl4OUWaCYzE/LAZF9jdls0g2/R4zTVuKMDGc/uqe53/Q16Mxui
         qderTGmEGLB96vcXXcX4pBI3mJIq8DziC+z0Lq3fpf+UsIoXwiSGLygqD7np5ptEO1fV
         d8fY6/gEAU3cJvN2ZOwi+Sz3fmCcVn2BbCRj4KsMZlDyzAOZ9iTbpY2+AMKhuSEK6a5l
         Lg55wXgZx192r8OOBfNcPTNiW1xc2d4YydVbPwlM3R28bf+hfA3xp0IXQhn1f56HSbHD
         jyRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=jILiRm90aRamE5lAw9+1J2GPv0RPdczvsdZoWEuZtDA=;
        b=ayEI3EnF+JGGpL5rNMm1PrhP4dLgf/+mBZ7r1ZJDT5qi91tj3XholX49Y8rtMAf4jo
         0fJ7KFmZj9pTGeRQ9KCyCCGDnirnv0vfNxEGs7HbyLNSSbbdRlsI5ckeUEvxYxEAk+dE
         Jv8jMx7garrFcme1gvuNG0QV+PKaVIM0dDXydHV2nlsU6CfS04JysRbvHjLPT5n7U9sS
         5R/m+O9WsClxeh4h99yuBlmEprAzDQW8zM+j1YlodYnyVf11vh2T5EyaNMzMGs+s8P8E
         xPKjM+6EI0tTii3A7LsKheCavA/Iqotxxeb0USoVWbuDS+FYrli9KIX2l6pthru+5TjS
         cksA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t9uqfSPk;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id o2si287193pjq.0.2020.11.24.08.56.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Nov 2020 08:56:06 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id f27so6993648qtv.6
        for <clang-built-linux@googlegroups.com>; Tue, 24 Nov 2020 08:56:06 -0800 (PST)
X-Received: by 2002:aed:204c:: with SMTP id 70mr5086384qta.92.1606236965390;
        Tue, 24 Nov 2020 08:56:05 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id c79sm13210905qke.69.2020.11.24.08.56.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2020 08:56:04 -0800 (PST)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 24 Nov 2020 11:56:02 -0500
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Jakub Jelinek <jakub@redhat.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-toolchains@vger.kernel.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Fangrui Song <maskray@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Dmitry Golovin <dima@golovin.in>,
	Alistair Delva <adelva@google.com>
Subject: Re: [PATCH v2 3/4] Kbuild: make DWARF version a choice
Message-ID: <20201124165602.GA343230@rani.riverdale.lan>
References: <CAK7LNAST0Ma4bGGOA_HATzYAmRhZG=x_X=8p_9dKGX7bYc2FMA@mail.gmail.com>
 <20201104005343.4192504-1-ndesaulniers@google.com>
 <20201104005343.4192504-4-ndesaulniers@google.com>
 <20201123232210.GA208735@rani.riverdale.lan>
 <20201124003357.GR2672@gate.crashing.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201124003357.GR2672@gate.crashing.org>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=t9uqfSPk;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::841
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

On Mon, Nov 23, 2020 at 06:33:57PM -0600, Segher Boessenkool wrote:
> On Mon, Nov 23, 2020 at 06:22:10PM -0500, Arvind Sankar wrote:
> > Btw, is -gsplit-dwarf at all useful for assembler files?
> 
> If you invoke the assembler via the compiler, with that flag it still
> creates separate .o and .dwo files (via objcopy invocations as usual).
> Whether that is useful depends on if you have any debug info that can
> be split :-)
> 
> 
> Segher

Right, the latter was what I was really asking :) We don't currently
pass -gsplit-dwarf for assembler and I was wondering if that mattered.

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201124165602.GA343230%40rani.riverdale.lan.
