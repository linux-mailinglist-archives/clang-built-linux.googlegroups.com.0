Return-Path: <clang-built-linux+bncBCV4DBW44YLRB3OPUP4QKGQEDRLTBZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0551223B43E
	for <lists+clang-built-linux@lfdr.de>; Tue,  4 Aug 2020 06:45:35 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id e12sf8014980ioc.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 Aug 2020 21:45:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596516334; cv=pass;
        d=google.com; s=arc-20160816;
        b=FQmdPZNLPh6SAeWUWiGrd3TQX1glb3mJbliELPZhNnwS6X2qYk8fGs10AmK9Oy2Lzh
         AZhuavs5BsJKQ+YEpVvdatHJ+t1tO19qmVBJsuJFxJ+Hktru+1z/fCUtzg10PjI/ayfY
         vFacZvh92V8aInVux6rnXPzFIYjMcfSXdwSsfk5WMaXQ98gW7ETaJFBUZEPy7tJP22DA
         gehmVIBelf9+wa0B0aU/BBp69dJzlZkvKxu92L9DO2oFR/FH0w/KlbfYzL9DzMwAG3SF
         7VqH+aHcTZBlsT4SGo+PhdBiHa9OcMXgWYBFQeaH0J94fYczddJuEg5ArJYzXpMBTz6u
         DiGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=Cw8brTcTbgTzsiAsLkjXKDeH2zQeWav/JHN80Eb1SXU=;
        b=i1RdgtX4/99oKzg4j27UznvjvWNcGiljmh3mcZekPupbTELeXPYa5b97gpa2Xtwq1j
         viq2VEfsqpgdYxVWrgQBqpQ9T+BlS594ytfE7vgtGcNuxt8EsLvyQRkHIXZaumOQp28I
         WmM38hhmVgSfpMX4STMY26DQZgFaUbRT8s6P4KeVLrDn9/nRItiIm3Mj5oMhR2BRc5ln
         CIoRU9znqVijX/E2bErqBcsfeI8+FH8WlT+P/R3nKpf3ZG0LwSJxQ29eD11De/jXfZCC
         wI4Bu4BnzinAq1q9AFjLNJSREGCfs7cbA3/NClpSmFAR8o5/kl6D+pbLJT6N14w1rAdY
         aAWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of ak@linux.intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=ak@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Cw8brTcTbgTzsiAsLkjXKDeH2zQeWav/JHN80Eb1SXU=;
        b=Ca4hSC5zZxxRXtSdzybwPg5mDwUL1UBZos0WTe+lpDBeO86Gc9Qt352Gmq9tgvCKsh
         34wEaZqw0PF4QanpP2Pvy/chfBxGcmy84yiJAUszsNCzfUYME31s1rPuskUyPbZ0gDIV
         J8GCsTZhSfowA+DPhXgkJUfV6OQPaJaXIDq7pLjFj5DznTVtQcMtsMPyy9c8ZP4Egfmp
         FduD5DFMZipQhObRXB9F+Q2CtNlkSONhrW66gj3KPOTSRkJGhKGTXjp4dh2F0ZcjPZ9E
         6mxZFiTODO82uaVfbddQ+bvrmOBYn45tZ802HE1/bw/l9+UEV4/AmSuG25LxmBBP+4XH
         ToJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Cw8brTcTbgTzsiAsLkjXKDeH2zQeWav/JHN80Eb1SXU=;
        b=jWw6fX4GpUW01c5ppvXirYkU2otegCNHuR+i3FWv1Hc1TbzNecIwRR/1ZkCdE35s+s
         3hbUNoNWX+CjKia0u2uYYFszLN8DGXMriKB1GsCCt1C1PvMQFKKSPX6D/K4Ax1dHffMi
         b61OeQNaW2noMuOoMo24jjvQVU/cfO7dDXV7wBsXjUVNcUrnP7e+HTdbkCHVOwBlgtrA
         9peRE/hg2/++evk1+HaLxQWA62GINz4Wjf5pWPgT2kIPAvQ8V55o8N9Z00wXoIkXfNkL
         olqG7NIHeXUhkwXqXM3ANaas3xfG5HquaVLYsgb0QE1K1oj4/9X5fxIXtB4Tccqrb9l9
         6xZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532FfDsU2qfff3mP5VyQaiPPw/KZ1qI33wUl4zg9w7Do7Vj2GObS
	w5a3DGTwpbGiA1YM/vwHiZg=
X-Google-Smtp-Source: ABdhPJyPX5mPepzRZibOiEk3KUqQCPfJrKgMEER9hNKnw/YVwa1mTdNWpK9E1sVLzWtX9wdF2V/pJQ==
X-Received: by 2002:a92:9910:: with SMTP id p16mr2924150ili.51.1596516333706;
        Mon, 03 Aug 2020 21:45:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:2a9:: with SMTP id d9ls2827007jaq.6.gmail; Mon, 03
 Aug 2020 21:45:33 -0700 (PDT)
X-Received: by 2002:a02:1d04:: with SMTP id 4mr3804680jaj.16.1596516333442;
        Mon, 03 Aug 2020 21:45:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596516333; cv=none;
        d=google.com; s=arc-20160816;
        b=nSk0bVAyvyyZ5EINVRVRjCUppccFrOyPTXjf/BHdjfdIcwKGiJFCiQ3bI34WIuB4Hc
         RHzvnD1e++hoRrGLWRKagtwkHHnjB7R58YGXQP85kOpftg9njf9e4J5d2eKhSdN4+kgX
         hq/6zPUj7+0nSX40bQvGEo8dlqb6Nd2UIhcuNuw0O2O4+okhWM5EwH0roceO/n3YrpVQ
         x92+rjrYRIjV0RYxS4y37FrdoQQsQ7XqoE/3FPTktvTCSCOkUgSo726DQcquW+OBE+TJ
         Q6XpYS3Pwq9mOvsyv6Kbv4hZ/CnTKu3SXR7ptKAngQ8cQYKVJC7EtjoMKg58Ifc/IVEF
         bH2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=bictgAayJ4KJnsQEfYGzt7CUJMXtlsoFmHplsOJcG58=;
        b=zNWcWvqGVap22jxOm9xKDmwrMuBYt28FB7Q62Cw5r4/Qn/l8nVazID2Oc9wfXk8aGH
         TE+TlzS3jPjZIrfv+1UBVmhxJsKOJuzFakf8orwFQZ8kULKcLyrxQt54UfhU0i8Ttd2b
         6aJnBcjFPLNRwuc9kAakFamRS1ZX9CGzDpndSRRfnc1zSnJ9UHHP3WPV+RdUztY5qrtH
         KO9lo6otJ4c+rIstUqNJVmghOzwemSi5yrXIa6D+ALr3pF75UBdWPv/xtV7M7kZMxDgV
         eGJN7YEIQ02Cf/QsDieSjE4pD/c92ZrmEEElyY+g2FZFTSepLlSYkda+WoqxRBt8rgVO
         SE0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of ak@linux.intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=ak@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id t7si1193316ilh.2.2020.08.03.21.45.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Aug 2020 21:45:33 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of ak@linux.intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: IxViSStS1HCrzcuEWrhT2jJypE6VQPnpTEMu70IiXVWwU5GEas1zQam2Bc0vjCANjSHsq9nt6G
 eqtanZSRdzCA==
X-IronPort-AV: E=McAfee;i="6000,8403,9702"; a="149696054"
X-IronPort-AV: E=Sophos;i="5.75,432,1589266800"; 
   d="scan'208";a="149696054"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Aug 2020 21:45:32 -0700
IronPort-SDR: yT+NnfDzkBBqZocXS5Cm5LSqUA6iXDA0PdiYx2LJzMwyVMnoKnfAmSFyjlrUPndNHDPKGRzR/+
 LEl1MtaDPn8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,432,1589266800"; 
   d="scan'208";a="292419767"
Received: from tassilo.jf.intel.com (HELO tassilo.localdomain) ([10.7.201.21])
  by orsmga006.jf.intel.com with ESMTP; 03 Aug 2020 21:45:32 -0700
Received: by tassilo.localdomain (Postfix, from userid 1000)
	id 40984301C06; Mon,  3 Aug 2020 21:45:32 -0700 (PDT)
Date: Mon, 3 Aug 2020 21:45:32 -0700
From: Andi Kleen <ak@linux.intel.com>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Kees Cook <keescook@chromium.org>, Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jian Cai <jiancai@google.com>,
	=?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>,
	Luis Lozano <llozano@google.com>,
	Manoj Gupta <manojgupta@google.com>, stable@vger.kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Michal Marek <michal.lkml@markovi.net>
Subject: Re: [PATCH v5 13/36] vmlinux.lds.h: add PGO and AutoFDO input
 sections
Message-ID: <20200804044532.GC1321588@tassilo.jf.intel.com>
References: <20200731230820.1742553-1-keescook@chromium.org>
 <20200731230820.1742553-14-keescook@chromium.org>
 <20200801035128.GB2800311@rani.riverdale.lan>
 <20200803190506.GE1299820@tassilo.jf.intel.com>
 <20200803201525.GA1351390@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200803201525.GA1351390@rani.riverdale.lan>
X-Original-Sender: ak@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of ak@linux.intel.com designates
 192.55.52.120 as permitted sender) smtp.mailfrom=ak@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

> Why is that? Both .text and .text.hot have alignment of 2^4 (default
> function alignment on x86) by default, so it doesn't seem like it should
> matter for packing density.  Avoiding interspersing cold text among

You may lose part of a cache line on each unit boundary. Linux has 
a lot of units, some of them small. All these bytes add up.

It's bad for TLB locality too. Sadly with all the fine grained protection
changes the 2MB coverage is eroding anyways, but this makes it even worse.

> regular/hot text seems like it should be a net win.

> 
> That old commit doesn't reference efficiency -- it says there was some
> problem with matching when they were separated out, but there were no
> wildcard section names back then.

It was about efficiency.

-Andi

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200804044532.GC1321588%40tassilo.jf.intel.com.
