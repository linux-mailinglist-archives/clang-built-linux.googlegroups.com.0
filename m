Return-Path: <clang-built-linux+bncBCV4DBW44YLRBZV7UH4QKGQEFAUFCFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 0312923ACB8
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 Aug 2020 21:05:12 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id ck13sf404895pjb.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 Aug 2020 12:05:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596481510; cv=pass;
        d=google.com; s=arc-20160816;
        b=QHS+rZgH7mLbEbkejHQ7gMu479T7c47Lrot6A49XRbyur++cG3bAQEQChw0a+JJtzz
         9LKrWpKtuSJxNnw14YpUjRtXT3ATDFYCkNxLPX9rgVADeQQZztpxTNAtS1tDNcp+kiiM
         bBDnLYbIuA6SmyRiFVcf82v2RTLizMYdvDio6i+pQONoXRlyOf+BRifylqx0A67b8y4F
         4TfSecY/cXzQ7Z/P9Rp2GrtfasvfR0iOOs8Ut46dQDO81PcDtM6408dRR0kzBvRs1j3v
         UmFp6t1cRsWYEFDiTpJmW4+o5d2H8bRiKsxafHzPysRgmXewhiKEWEZS9bLNZffLb827
         fUyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=R7AzATXHEyewt4G0osa1ytyH75ZaAuY2L5YcWtqQX/Q=;
        b=WT7QuV5dLxdI3s5XG6hpPpU5+f+1md4qhVGqE0BNmqDh93oG8GZ25cChgiSs9BeWgk
         60K0IBbQz6Q8o0SQc/4Os4QNJMpmtOBca7gMJxEi002ikZ92zneJQFORlbhzvQ8Y3N1v
         sS/+tWrIgsWP5IA1MGIFP5T6oUM6vrzBSQzeGZ/QJ3RCL1hiB6xRYd1xghUlow8GA5jK
         vl3BQT5nZyoc0YXqUc+5sl0enlqW0oYi5NKdP2mP9NHHYP3/FvFoamq9zJjHubMJAB7s
         f9LbMQvwhO3ky+Epr61Ty2pSxrTJeKGCP6ezpNzptFWTIMR+kGuX3O6Mq6MPOCo1/Vis
         W3Ug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of ak@linux.intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=ak@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R7AzATXHEyewt4G0osa1ytyH75ZaAuY2L5YcWtqQX/Q=;
        b=CJd/eIgHRb8snshBJDJd3Y7cYXPO4BkJcDcX7JIfOkfbatw1w3evGr0eNRIoLb6xPF
         2w44rQ2sxWyIq3ChXcK5NSJY6Zuu4bRlg6+OE5hi1WOAxaFGJEuaocCnaw9iK+tH4H7l
         /FNnca4kseKTKXgwWNt7l4Je2S6FFl1ChvmJ+RKxV04UJ2QAARlTCx7UgIHjbfOT/Tue
         iqoErRNORPSpsdVLEp0zjGLV9ydM1mXxIpLyL003j7birrF6ZlpKp+taQsuv2sRt0+af
         Dv8J5Hf+d6CUMD0wFjG1nFm+Dz+kNbfLiZbCxNV9H62j5gczKPHO2HIkSJAGxEcLW1g0
         dSVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=R7AzATXHEyewt4G0osa1ytyH75ZaAuY2L5YcWtqQX/Q=;
        b=rf5C6DNQeA6pI9iGb4A+xRZDE28vZeOt3XAaCrvg/W89f/xmZwjveEvLldG7wQsWy8
         KL6PuhdIbE7s7qGHHq3va1dbEBZX3Pde/Z7mkmN3RqXX27XQ9AEuqyTI9VR93z1VuK/p
         MXn8XrrYMlyfpA+AdxtJXSXnDdQk+k2ep9QzYZAfzSk8fGUaUfU3BGILUuWfaCpwxB8/
         xe//knGebzGNfjWxnzZGwWHGx4Q5oY9NtYLymDSMRtSa4CVrlz/wsgzMqQQkzCAmTA5u
         aPFcxHh0WwrkNxpJ3AXwGKMJP2vvSsbD8+HVi2gyCz5A9xifCHrZ6OjQJheUiZhnizre
         xNzA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531VZqzJWY/jBxZnDWLBv1ZXuLDV8I84CkcLGWUHsWfk/tdLSVMw
	BcUHU05ugJMvUVf8jUIdPDQ=
X-Google-Smtp-Source: ABdhPJw/dmzZQ8x8mFmJOCqhZP6d2omQC/kwMGtIAIO6+z88Nuzzj/5Fi/S4HKvrf8E8qlZ/3DYnJw==
X-Received: by 2002:a17:90b:3d2:: with SMTP id go18mr734771pjb.28.1596481510418;
        Mon, 03 Aug 2020 12:05:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:525b:: with SMTP id s27ls5477592pgl.11.gmail; Mon, 03
 Aug 2020 12:05:10 -0700 (PDT)
X-Received: by 2002:aa7:960f:: with SMTP id q15mr14670249pfg.79.1596481509947;
        Mon, 03 Aug 2020 12:05:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596481509; cv=none;
        d=google.com; s=arc-20160816;
        b=xXnfj4E1iaDZORx6jL92HiYaoSsxivw9eR5c0eFqnp3ZUDQFfmhqtOmz7LN6DeHF9K
         aZzyIfaPup/kr4Ib0o/FYW9rXhS4dQZSeBpIiSj0J/xkdL01IpW9a2npgHLEmk8LUPKC
         aeOOlXKNc0GWJrE4GMzxzeJo3BG2Y2yfkydwUTzPAzHHUHe92Dmk5y6pvuQh+DUuCfbJ
         PWVOz6lRyZm4Uyq2hm+RYXqHju4yW7r1dvLt4ky4PIPySM9dp5pBRCWZCOXARLh/ilrP
         9mXPgNOZZnUCD6cgYMWA18VnyLzHK2m+e4mDhbK/t4u5VERecsaPdwCaf5qu6FjBCx0V
         IRrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=hDmOOxBw8z3NfPRleE05sK1Sn9gEuKv7wgzaRFASxNw=;
        b=L3GJN9tR4AzcBRDcfnU1AZE7pDaSDNzQUALYa+PQvcFQsVkqnaRGekSgys9vZ5vpjW
         EzpQBkenZLBP66EFuBhbUT3hxi46RvoAzh+F3pAZplHbd6u3wej5ceo5PAVyA3yHnvx2
         E+V9cLVXV0batif2RYE46NS/E5NZveaalTsZTyleqbsmwawBQqJyai3FL+vWcYsBlelr
         N6qeI7tzUN/pLXqhFFwF/Rg8LifE9yOXTtE/wV2Nj2JyabMznL5d29egNqoFu/9haabB
         wMiRAqP5cYzCmoy3/PKx86kN97Dp3VOy0Irobgbgu+T+8Aib8idpW6PqIMa+IFXSi0Ng
         qtxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of ak@linux.intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=ak@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id nl1si34386pjb.1.2020.08.03.12.05.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Aug 2020 12:05:09 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of ak@linux.intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: IBhdP9682J19199GdevEFD2tOIHjZdzHMl4WFEMGwSa4y3m8EflWuXimqfkhh5+COBp59cWouQ
 FV166vt8enTQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9702"; a="139770551"
X-IronPort-AV: E=Sophos;i="5.75,431,1589266800"; 
   d="scan'208";a="139770551"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Aug 2020 12:05:08 -0700
IronPort-SDR: oJ59usHZIo/V2XvsaaF2ffeauJiMzYoWD+G0LHQLHWJK+qHUC5lg/k5XEvs4GeYnlYUIdwSTxl
 25ocyzJZIrTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,430,1589266800"; 
   d="scan'208";a="314888731"
Received: from tassilo.jf.intel.com (HELO tassilo.localdomain) ([10.7.201.21])
  by fmsmga004.fm.intel.com with ESMTP; 03 Aug 2020 12:05:07 -0700
Received: by tassilo.localdomain (Postfix, from userid 1000)
	id E5E5E301C06; Mon,  3 Aug 2020 12:05:06 -0700 (PDT)
Date: Mon, 3 Aug 2020 12:05:06 -0700
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
Message-ID: <20200803190506.GE1299820@tassilo.jf.intel.com>
References: <20200731230820.1742553-1-keescook@chromium.org>
 <20200731230820.1742553-14-keescook@chromium.org>
 <20200801035128.GB2800311@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200801035128.GB2800311@rani.riverdale.lan>
X-Original-Sender: ak@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of ak@linux.intel.com designates
 134.134.136.126 as permitted sender) smtp.mailfrom=ak@linux.intel.com;
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

> However, the history of their being together comes from
> 
>   9bebe9e5b0f3 ("kbuild: Fix .text.unlikely placement")
> 
> which seems to indicate there was some problem with having them separated out,
> although I don't quite understand what the issue was from the commit message.

Separating it out is less efficient. Gives worse packing for the hot part
if they are not aligned to 64byte boundaries, which they are usually not. 

It also improves packing of the cold part, but that probably doesn't matter.

-Andi

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200803190506.GE1299820%40tassilo.jf.intel.com.
