Return-Path: <clang-built-linux+bncBCV4DBW44YLRBWE7RX3AKGQE2JSVCJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id AED3D1D8E23
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 05:17:45 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id j84sf6946097oib.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 20:17:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589858264; cv=pass;
        d=google.com; s=arc-20160816;
        b=VUbAqF7LycbE4m8hLZB6//kn0IKSWoVCvSppLh8OPsiKNWhTg+8sU+CASncRaUlxne
         SQrVxb77aQyH/wGe1/hj40PfJAAymh45Wr0kH272i1/sqwebtxmpw68WJTnQXkGn68lT
         YRHaisWpOXj0J8BxVP5rMPZA5KPh4pIEm5f04CWJlp+22bCOErNZgWR2fBhUnkS3hKDg
         i4Cy1gU+dpDhD6E9p6+6BslJjvFjc/JiaoSN65/MqWQzhCJ5npFmwpBTi5+ySkHNpFZ6
         Kd2zvQtg529vYtRIY5T7q1rY4+XBJ1xxLLUdrbQxOasGViO5i/s9GQzAg2QabhqjCP7t
         vNkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=xAOSUZNtmY10xzjpQ0CwCC+vH9IOOS9IkWe3pPqslMU=;
        b=pS/3yLnl0dl5rGnuifVKaWKsqlOavArMoTNuz6uyP6rIbk9U+852Iicgzr80DjsrCE
         C/tiW//nKLfcQIBikVm+m6r3EjRzqFWuJTjkflOnNA6picaIuCXD6DP5uS+Hsl4iMuPq
         X7VUNrGZNg7weviQIlyEwP7caRgxN/6Q1gqQc2JesfjMYUDb0Sqmi+Ni1EW99ss9CRr/
         lIngufSWa8OswIDFn0PLNMSpdX55Frf3IRWAp7IOTEjHw4OaXvIskQjy0syaeasEAuiH
         RYsbNhjE2rkVpN0WYZWoLbAXjtCNkKaqiVeuxYHYPKMIpgom0gynZCoCm8iffF0w6Qqm
         0Csw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of ak@linux.intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=ak@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xAOSUZNtmY10xzjpQ0CwCC+vH9IOOS9IkWe3pPqslMU=;
        b=p8tfGcqyAYuJvnFXLOW08sZsg8RWtIRkAvllwLSY2oG7AEItNIl92KurxlD57/uVaN
         7Zl2SkEqELEYx42siWovws2ngxKH8elhMgzd58YMfzgHzS5Uw46ai9Q3X0ziE+bO9Wp+
         b+dtnTF1fSiUd1Wb45upWIKHxv5z0w8eoP3d4ytK+Aj4w6t9eO13DCQB4SgimaHxG/RX
         u/ap9rxuDtYwhTVpWHivm6wLsoMoSJ+cVGaCLfLcgEHBIMichMHI7zhqOeSsrphrxQDQ
         H3KhweGK/EKYfQPHynWoyfQckwg4e1909lBqlL0KEEu7kZ5BUF5UG6fk1TI+l5iwwYdj
         W2vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xAOSUZNtmY10xzjpQ0CwCC+vH9IOOS9IkWe3pPqslMU=;
        b=JCJ4YRDA9dqswpNOnJE+zaf7nqXMwYQsgCdAtaM/Ns2Q9ITtwM8nCyEE17+sZ9QthA
         GsnRu/fLA0uNRvWLK4lU47D5l72tyCF51HKOaARR/QF2tYbnfYm/9HsFijAVKBFxwJla
         ktFiSXwPvaXUSlEG9+Si4/jLUQKmSW+oK1AOzYw/R0je2jT8ixM/ZtI9wSXMnhcmqgBu
         /kAbMSPlSH06Dnqh1w8tguMezpjMS5HlstPWoCp5A5/RV9Sdc27Y+EU9l3Fybwb4xuQ6
         oLGJyuxqrHZlkqS0NGP9o5wIfjfk+PNaW2Tt4AH7Vkc3TMl6PCeHC+dFgGJ2rHcSiu7r
         cM5A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530aZ/L7Ln8zv4l42pNyoM1J5p/nCrn4vCeCZ89hNXjQXfKm5LyA
	rABPW1AyEwFJs54MT8zkR7k=
X-Google-Smtp-Source: ABdhPJzhmbbBMCpeg52dLSi/g6jpLeGOTredvoSY8qEjcPLTF6dlEK9+bCKfhK3hxOVK3ZjAIZKgcw==
X-Received: by 2002:a9d:600e:: with SMTP id h14mr2989079otj.281.1589858264688;
        Mon, 18 May 2020 20:17:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6a1a:: with SMTP id g26ls1037113otn.0.gmail; Mon, 18 May
 2020 20:17:44 -0700 (PDT)
X-Received: by 2002:a05:6830:1e03:: with SMTP id s3mr8019030otr.130.1589858264380;
        Mon, 18 May 2020 20:17:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589858264; cv=none;
        d=google.com; s=arc-20160816;
        b=CyPaQjTAnx54retxs8w4YS2zboG65FyDqQT3UDXfC6cjVdhcCwxj7U0KgUbYtdg8am
         1FBo+FJ34nZcgnoCMChSjArkwi3cOqiuyJV0unwbK2Zk7mm3eRHUaOJKfidoK0ia5WzH
         BBAnZyK23Vf/8RdcHzRmo+3XaV3qE5gsRBjgUVG4B7Y7HUaiFZqLSkOON4QjK+6VRwyu
         Qv3guPNN3LQkWsQLfEp9M0mahJ2lPPC0PThNMG+wK7/T2sTRUr2nYuwTJ1ltDiE5/C9a
         AVmuvYEGG3Z9jyzIeW4jbWOBTM67PWEj6udLn8lUQ0kN+qWvLm5wQXsF8+UBJdTV4LYc
         x0Tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=mm8oKvJmrqKP4DxkkDs9rs2bKDOHipdqaHmFZkXMGWE=;
        b=X5C5bEvhTBl+lOCgqFfKr3lSLh4UlRtafqWamGQOagIbLAsiP4BmiIikq2dvkCk6dG
         uSTUxk1C4DzsIRyNIvH9unbXoAiOYnj8ikiBxqqiK+B7ByGmoHfaMckYLOpjIJ6HJO3P
         4D7khH3wi7Ft8eFlIGzhbaPxnWFNxBJPbFPvRMZGpOf7IEz11BheF6lQUoLiWVAcEWQc
         Oz9qcm25b10p4680ennsmHbqyaETSfrXr6GcsbBzvyVxgl12VmzBlE6YNkh0/Ii4GqMS
         hUS0IXXV2Gh1zqIih5R2B4oDB/v2WctKm7nZ3ldpfk8KSorseuZ/BO4Q77J0ykinnBAO
         8/DA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of ak@linux.intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=ak@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id k65si907618oih.1.2020.05.18.20.17.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 May 2020 20:17:44 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of ak@linux.intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: Tg1WApcHamLxIXEH3llMU00MULbJ9RX4BWdUoe4to9Wv5KaNDwEDA6FSn+OUpsk8WsFuouKdRs
 jLm4/V78KWWQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 May 2020 20:17:42 -0700
IronPort-SDR: nN+30u534C5x/E+ZsUfd0cyKu0tepiTkuKjyZkLIrR2mbR35brhx0CUlf5qxAkGWvJTUFWr1B3
 ul4cIaeKgUWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,408,1583222400"; 
   d="scan'208";a="264165179"
Received: from tassilo.jf.intel.com (HELO tassilo.localdomain) ([10.7.201.21])
  by orsmga003.jf.intel.com with ESMTP; 18 May 2020 20:17:42 -0700
Received: by tassilo.localdomain (Postfix, from userid 1000)
	id 429FA301B7F; Mon, 18 May 2020 20:17:42 -0700 (PDT)
Date: Mon, 18 May 2020 20:17:42 -0700
From: Andi Kleen <ak@linux.intel.com>
To: Bob Haarman <inglorion@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, Fangrui Song <maskray@google.com>,
	Sami Tolvanen <samitolvanen@google.com>, stable@vger.kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	Alistair Delva <adelva@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>, x86@kernel.org,
	"H. Peter Anvin" <hpa@zytor.com>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Kyung Min Park <kyung.min.park@intel.com>,
	afzal mohammed <afzal.mohd.ma@gmail.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Kees Cook <keescook@chromium.org>,
	Heiko Carstens <heiko.carstens@de.ibm.com>,
	Dave Hansen <dave.hansen@intel.com>, Baoquan He <bhe@redhat.com>,
	Thomas Lendacky <Thomas.Lendacky@amd.com>,
	Ross Zwisler <zwisler@chromium.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Dmitry Safonov <0x7f454c46@gmail.com>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] x86_64: fix jiffies ODR violation
Message-ID: <20200519031742.GB499505@tassilo.jf.intel.com>
References: <20200515180544.59824-1-inglorion@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200515180544.59824-1-inglorion@google.com>
X-Original-Sender: ak@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of ak@linux.intel.com designates
 134.134.136.65 as permitted sender) smtp.mailfrom=ak@linux.intel.com;
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

> Instead, we can avoid the ODR violation by matching other arch's by
> defining jiffies only by linker script.  For -fno-semantic-interposition
> + Full LTO, there is no longer a global definition of jiffies for the
> compiler to produce a local symbol which the linker script won't ensure
> aliases to jiffies_64.

I guess it was an historical accident.

Reviewed-by: Andi Kleen <ak@linux.intel.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200519031742.GB499505%40tassilo.jf.intel.com.
