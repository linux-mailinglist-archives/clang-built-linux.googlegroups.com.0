Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB3GZYX5AKGQEQ6WNT7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id A207325CD68
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Sep 2020 00:23:41 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id gc24sf2386504pjb.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 15:23:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599171820; cv=pass;
        d=google.com; s=arc-20160816;
        b=owXzMbgjbww/ZKaTP1v7LBVS1V1pxUXDVlfv+wJB8v3c//y0SDQWxCuaZ/jUuT6pIU
         6gtA/j+I1K4UcQXYN1Cta0SEf1Wtqt9PKNf2jI8TiDZEVc7MOrSPZVPEuNJGhxwRumwy
         dhPixpEe0lCaKBr6HoCkiyv4T9n3wWPkUPN5CYWJQ5Cg4kMS5c58jt5eONSJKDM0PEyb
         2ji94ziwCDf8cwMMP6DmtmDn2l2GwuZZeaB5P5ioQPjoRo2UFeZ/KtAWcTEzkK2bph3e
         NLTLtDABVMVhtJ/Yj4r4sn8cPrT16ukZ5CePvGSGTTuhgvWMpDY6fo2nraGU6uRAlFka
         H3qA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=4f4Ns3X6y/Cyv9AKqMPSLFKIMi6vt3tRzoazTF451UA=;
        b=0RB8ElXYdq9Lh8UBPpek+RugWmN3ylwW9DyEaoov+tz8kJits9ph754wTszG+5MgdC
         I3tOvwYWHbM0BzlYi9X+dvT1fiHS/857vTHzGIs+42adRIncu1GQxRXpzuWgMRmD3iMF
         wjUgRJJRLuLCYtTP/8xMvaHiplzPLdf2j8UxZSuFU7DTN8TuEebhDcCECbzbniDua4OB
         pfKgAVG5YT4S01WQRxki77d0/jTg/N7aoS14T1/1eo7RuR0yPqC4seJo3MQq9hOTbWUg
         DXX4gGc4ByWKGvoF3yId03D+70Lyc8s0hPI6LvTc5kDngtLfqVCOmM9gGMrsE1UeTXcY
         RSrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="MDW/84QF";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4f4Ns3X6y/Cyv9AKqMPSLFKIMi6vt3tRzoazTF451UA=;
        b=U82lMVg5iTpbN8KYTylhbMOxkIKJkRUmwkmz4AwB7I7CLbfIEVGcQqxNk1J6JQdxCR
         cJDiTPKbqbcUH3/REDrMcohiycQuyGUVQhZfdaxPGHhHLAWTMV5VP5vrx8lB5pDkPpjl
         hs1bWjlPoiFSDphFAdNKpLhtiwI5y/YrWjJhUs6uzV+0YtnZtGcA3v0Xknv5UM4cUdTX
         svAooQMDdA/5atY3UBlArBJ2z8eCZrSr1hzU71/0F4zhgvUY7usbD5sBfwEpbs/7GGEr
         BfXBgQgFDooKrnMK9CCL8uuc8dLuzXt4F6N9eMS911Z/PC+VX8rdKictyp0HQty4HGDj
         HLCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4f4Ns3X6y/Cyv9AKqMPSLFKIMi6vt3tRzoazTF451UA=;
        b=mJQoeqchuqKY1dwqg5ffS8vsqV8qVTJ2+M+ny7R/0EHljxy6lyHWoiQuQc2knxUEMr
         n7y9OsbbKgRMunq+qFpsViqCfWPAHTee8KjjqXlca9gM2/tgXyC1GPsYOETbQE9R7WvT
         06MCTsOtyqFvvmypG2pBR2XxY4Q1KjV6y3gSzX4Yugx+oYU8z2usYjY7DOpNw5M5tO4z
         8MUhMaUoh098fsqXIFAkVGpO/DAAXotjINGEPH1lEwb5B0k+RwRFeTUoZO8MdfxR+UCb
         9bC7/KdWT+rsVdVqnNsQgi95EtLl+E85ZW9AwXML5sjEcSmz1W32tbM9e3ZGzzQd5P7v
         4VMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533pXuNMVqHsR9sKSCcF6KKi3O+U4rD64ll5TVrAmDVdXiWkZILO
	fLmhVk9uSO7NGrMWfr33iKw=
X-Google-Smtp-Source: ABdhPJwXaQdRx0sCeOdrgIoGOe9oYVMhK7iH0I/BsOVOzVIW2ga2HsL7Sq2hpqJoac3NFMlgkci0rQ==
X-Received: by 2002:a17:90a:9285:: with SMTP id n5mr5596964pjo.64.1599171820340;
        Thu, 03 Sep 2020 15:23:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:96cd:: with SMTP id h13ls1409757pfq.0.gmail; Thu, 03 Sep
 2020 15:23:39 -0700 (PDT)
X-Received: by 2002:a62:8647:: with SMTP id x68mr4389951pfd.169.1599171819872;
        Thu, 03 Sep 2020 15:23:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599171819; cv=none;
        d=google.com; s=arc-20160816;
        b=cdZqjDzThyzKf0I3Tps6/lMVzu3XML5tcCrJEnY+WrAcaRyTC75EB8gMXEjJ+5r96a
         oSibzkyDLa3DyRSsiegvIsG1VAyCYe1PwPSKcPkIOYATIHJlW2vajufIK0rN6ek9MTXv
         0+NN8FUeinj/6hwILo3EH9qaJw2/rI8mF3saq5FLy4jhJQbSbLUYdvK+ebKJx34WC6Dl
         HK2Dbh4T6hz4gNMnsQfg5nXTv41mAgEtULwyz2P5Y+qYKIsw8AuKXgFqnzH/d9U2ntYU
         uDykv45wpDVWuwr0+Vz/bXn6CBvdHo4ZpeX2I2ZHBlrzNunIUSk5YTCvQpj+1YRDInVT
         Zdqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=H9pa3N3N+X5kZ3hnxzvQ5nbf/nL9Hg2di+HfYCma81c=;
        b=EerO5h8GOddNNL4htkvv/+xZPbaKRkaAen5tgicK7SILNt7YTs62vpQYfEyFs+zK+f
         KSBvoyv1b8aT7WeGg/DPQ3SeYH27kEw+cJPGSl6KRuqvumfEo0baeooPC0bOxWT1XIgU
         KL6yfIripPeL36hdUAz364/ngRXspkQsOUV5ARUh54wCZaA7t+mJHxnLOGHZD7blPOgE
         lt079s9foSYOszJ77FRhpFKjqhAvEU/fytFhXARYBisOHsDhVhqkYaY8owEve7XCzXP2
         /0lBkL/LGUt8xcH6Am+VcqkPqu9A4jorwWHFXM76HtcXKosblu3G93YxOv9oq2iamg2u
         AMmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="MDW/84QF";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id n4si257763pgt.3.2020.09.03.15.23.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 15:23:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id l191so3238973pgd.5
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 15:23:39 -0700 (PDT)
X-Received: by 2002:aa7:9286:0:b029:13c:1611:66c1 with SMTP id j6-20020aa792860000b029013c161166c1mr4124056pfa.12.1599171819570;
        Thu, 03 Sep 2020 15:23:39 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id q3sm4361846pfb.201.2020.09.03.15.23.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 15:23:38 -0700 (PDT)
Date: Thu, 3 Sep 2020 15:23:37 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v2 13/28] kbuild: lto: merge module sections
Message-ID: <202009031522.2BA9A035@keescook>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-14-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200903203053.3411268-14-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="MDW/84QF";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543
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

On Thu, Sep 03, 2020 at 01:30:38PM -0700, Sami Tolvanen wrote:
> LLD always splits sections with LTO, which increases module sizes. This
> change adds a linker script that merges the split sections in the final
> module.
> 
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

We'll likely need to come back around to this for FGKASLR (to keep the
.text.* sections separated), but that's no different than the existing
concerns for FGKASLR on the main kernel.

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009031522.2BA9A035%40keescook.
