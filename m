Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB76MQ32AKGQE4JJKKJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D31319760A
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Mar 2020 09:57:53 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id j35sf14181882qte.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Mar 2020 00:57:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585555072; cv=pass;
        d=google.com; s=arc-20160816;
        b=rmK5Cz2d87Ztlbn8l4JqEdtov6oS1nLci8uZirnNgu7+hLVl8xN1IAM9E4JVwnYA4J
         lMYgU73gUU2spbNYK42Tm+veJPFpVgp58f2ZdbEVmVTULxjb+hGsMApFEv2+cc2V8Yj0
         qbGkxlpqZxrGCSmdZ2xuhxEyUQ7CaQ2kQVfuPDRhfCwnc4l9c8U4JcPTXqH16H9uK3n3
         NG23N0IMyHgu0mmVq4vSsxeF6pww/OOd93381Gvx/GFTEwmekGIlZWdr36tyXYfCuBEw
         dHcnUzVgoomFbKpEl8t8uHnPAp4rOmWNq0/1mdkqQie/3FuRDaFIpG+tLBv6WRSXqAON
         V7Aw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=PfYRvJ1MOZ0WQACxJcOETaIsjWISeetXH6kbaXda85I=;
        b=ei+sp4dMz+4zUYBYogiVO4KgSplv38MTpCzKchpLJTYrWVHptpIUpKIv+50LArUeIB
         Bb+OF2CPIz4oIPxtanRSjYvj8+lnniLSNp/m2dp53QRI+m73aXm9OLed7IFt42i2MM6F
         2K4vEcyYbnVI5F88l6HCm/aPvoSOPnD/1jIHtjcv/hmmG5WMe29tU1jOBTep9YiMY+4N
         IIecCZkYKhQLXokMwF3SNK5G8M6YcUOVVnvzyF0qoWBnw+TTOw2MRbFzcYrf0b3fce79
         YPFaTqWgj083vuB9iuy9/TLYvI9HPFZBSHm3+0pAInQRZiKKWW/JwNItVh4oKkaitNyK
         IlXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eprL7mwr;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PfYRvJ1MOZ0WQACxJcOETaIsjWISeetXH6kbaXda85I=;
        b=qRAjhuVZjVgOXHdB8RWvF6eUipa4u7J6m+MewjOkVpYaeAUg+Djf17HlVmdlwELudg
         wzmk1ca5GOlEPjMivimKte0uP77OHEcMnDZvSNB391Xvh4KLQ7HSlU3tT06enyc52P3x
         Egbn2hG8dDGoEF9EgltPIBZ3U/0Jp6KpUQux3THd82LIs+1yvCswU3AQqmPrCDW8Bghl
         CK3A0khYeWp/bDWbvukhr3+MW16clgMjEoHu12y8o6sTIBigWftqBOt7yS8nas17bGME
         8iw/T1y/r6f38l+Ii2gPopc0YP3Sejhb18mtkaqzrhUGBJz3fBTjmCEFag2g0EzbFiXm
         BMlQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PfYRvJ1MOZ0WQACxJcOETaIsjWISeetXH6kbaXda85I=;
        b=FYKUPtIHRA5F2O4885q1JLwtmcc4LHVrk2lqne2IsjmtYeRA13JwSaVDu9UAG0q6Xh
         0C6ZZwqKMmvp9pLdWGT0QNBqEGJ1eHoIBRC4VSgtFvrVbzPEF1n6TTh5/RkP+qdIi+DL
         bNZ8FmBvkQDNOinLa8c3SDlixxNA3PQ4qWkMCJwQlquFxqR/3Kr43+05cAHIxiMws9qf
         qtMPdtt91+j21Ty0/h4LZIPzq1wX+50bsxXUX4LSW2xgjDZRz3Oz3cCBmfonIpr2jXRh
         Gr9IjRzYihEJl/XIAcuqepMA158Oo6YU/bEeDAEgJdzN8ap7Bu07ofM0h37N3puvyQKG
         x4FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PfYRvJ1MOZ0WQACxJcOETaIsjWISeetXH6kbaXda85I=;
        b=W5qhj/cSRapOcYXks5u7MXW/r161eDZoDqE8IBEwZi2MopuSj5/OdhEID4BBYp1UP5
         rXXYPpipqB4HGdrc/pqZoST5j/nQIiez6/qzkf7R8o658ZjrLbS9fYDAFjmxg3Hkj6JV
         fpM+iO4eiUH0GylVPtoc5tfWeG4gwUmWOqsyxI8EdsqO0bmo50s5uKbOg/kD74SwTpee
         AH8hGBtFOWmbeJf7fT3bEpYCGXF2k4PTZ2NzOa2oeDMfW4LB9ElAWptnK2qGKNAqIbOh
         AMK2PZig8FX2c/jPw5YeyawaGJSryWciPBiDkeULjWDcKfBOQKERQxWsYGL3bi6Z2uQK
         ucdQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ37dpkbqIArSbb+t7fRRggCBpYz7YcoSWHJfBhZOC97V1E9QhHH
	X2YAUmnJHeSzs8wgg0EV1kI=
X-Google-Smtp-Source: ADFU+vvBJl2xwSHI9cRYS1XOms+4ia7MiwdF/XKJsn1ZBSdp6zFPWGGnQIj48jKVBu/vyn7rlfmojA==
X-Received: by 2002:a05:6214:138a:: with SMTP id g10mr10723754qvz.231.1585555071927;
        Mon, 30 Mar 2020 00:57:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9e41:: with SMTP id h62ls8060563qke.8.gmail; Mon, 30 Mar
 2020 00:57:51 -0700 (PDT)
X-Received: by 2002:a37:678f:: with SMTP id b137mr10484507qkc.500.1585555071494;
        Mon, 30 Mar 2020 00:57:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585555071; cv=none;
        d=google.com; s=arc-20160816;
        b=YFz7emcYFj9lo3157C89CxCGKDHX7mRVw1zx8KW8/EK5GUHUBR9x44Fm2l/qN7l01x
         urhX6Uexhi6WwD2hG2wVg+kzjRvhUTPCqdnbNn6CEg3V8A03Lcz2iseeQipn6TjQzqYA
         P1T2Ebj/MypYdRrCksLEv8kCyAp2Hq602rHmjlSYu60+9pv7jcTOKnWAz4L+mnaCUHV4
         byy+kguHfSWWnqDDd92Gzi19WXXuXflGsN0lmgrOBwUae84UwNynsxHZ+xuS02uXCcAF
         30qqwRlA5zRD2KmlpvNyn5czYMtXuA9u6jU7o1YJTkRxjKzly5+s75XsErkmZtABtTX7
         Hv5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=+ipscCDhCltPMVSXcwaABkat0P1XLNamIU3q22ca/b4=;
        b=K+vUg+8sJ5fKaXtyMwLGwpnHN3dWQXmc4iDgZe2gjOkJK3oL7NNioriAeIztdEDY3N
         V0eWoEm2d0HgTX1rxtEf5b7sD++rJLZnWy7EgA4SeRER+/5kKRha9UgEW8tr11nhFrhS
         OP7FYT25u8h7rMU4stAgReEI9ebX/7Svt3LHg60YCm8KiwqoXCJHbf8URJXd9zQ0B0GR
         OmnX0fVksP7HPafX77e1YTJ8PB7G86JaJV+FO7wljecIYeFsD8Zx3m+V+Yb3JJ36rqqU
         /PQBbzytV6u1Mk+W/yyBrpQAwwXIBKGAV/3oEjqcA5YZ31wc5PcHna9qyVkBT/+iwtsC
         WSow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eprL7mwr;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id p11si944722qkh.3.2020.03.30.00.57.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 00:57:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id v134so14893186oie.11
        for <clang-built-linux@googlegroups.com>; Mon, 30 Mar 2020 00:57:51 -0700 (PDT)
X-Received: by 2002:aca:b854:: with SMTP id i81mr6490664oif.22.1585555070879;
        Mon, 30 Mar 2020 00:57:50 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id o1sm4131334otl.49.2020.03.30.00.57.49
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 30 Mar 2020 00:57:50 -0700 (PDT)
Date: Mon, 30 Mar 2020 00:57:47 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Clement Courbet <courbet@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Segher Boessenkool <segher@kernel.crashing.org>,
	stable@vger.kernel.org,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Allison Randal <allison@lohutok.net>,
	Thomas Gleixner <tglx@linutronix.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Christophe Leroy <christophe.leroy@c-s.fr>,
	linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] powerpc: Make setjmp/longjmp signature standard
Message-ID: <20200330075747.GA19343@ubuntu-m2-xlarge-x86>
References: <20200327100801.161671-1-courbet@google.com>
 <20200330064323.76162-1-courbet@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200330064323.76162-1-courbet@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=eprL7mwr;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Mar 30, 2020 at 08:43:19AM +0200, Clement Courbet wrote:
> Declaring setjmp()/longjmp() as taking longs makes the signature
> non-standard, and makes clang complain. In the past, this has been
> worked around by adding -ffreestanding to the compile flags.
> 
> The implementation looks like it only ever propagates the value
> (in longjmp) or sets it to 1 (in setjmp), and we only call longjmp
> with integer parameters.
> 
> This allows removing -ffreestanding from the compilation flags.
> 
> Context:
> https://lore.kernel.org/patchwork/patch/1214060
> https://lore.kernel.org/patchwork/patch/1216174
> 
> Signed-off-by: Clement Courbet <courbet@google.com>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Tested-by: Nathan Chancellor <natechancellor@gmail.com>
> 
> ---
> 
> v2:
> Use and array type as suggested by Segher Boessenkool
> Cc: stable@vger.kernel.org # v4.14+
> Fixes: c9029ef9c957 ("powerpc: Avoid clang warnings around setjmp and longjmp")

Actual diff itself looks good but these two tags need to be above your
signoff to be included in the final changelog. Not sure if Michael will
want a v3 with that or if it can manually be done when applying.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200330075747.GA19343%40ubuntu-m2-xlarge-x86.
