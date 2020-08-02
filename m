Return-Path: <clang-built-linux+bncBD7LZ45K3ECBBNH7TP4QKGQEDIO3KKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 993CF23599B
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 Aug 2020 20:02:28 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id x9sf10175107lfa.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 Aug 2020 11:02:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596391348; cv=pass;
        d=google.com; s=arc-20160816;
        b=I54xu9AeUMfw7TPfAxdAChjAo06L/jEpklaGKApaWxjgosSiGDDbDdjPT7YxdmEj0N
         1r6A4O02M8Wqq4ynceLue3N4g5/FqoT6FPEHsH4JxxfTbCznkDfGLA9C4TNGKEBhgfbR
         q5DRqeRX+1tgLpk+q4AU/+JwvqZ3gBJNHffnae8l894C98nMPjtCOe4w+2gedmd5QHdW
         p8Z72Blks/Gm5GnNZbxck+moCyyTlmK+1UhLjUpv71BKlKqPbVx1F7Pg5FuxL5IyBbKh
         Ja1MI210H6dSnueye0VcVchOpfQqs+jM5yVSy/+TczITmWLmGt6pWNx0shX37fx4uPsN
         Q3lQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=9WcvxvnfrFVrvMzru2fsrNHZIJSohKUoGHw7W7ScnZQ=;
        b=0LCpSVRvMnWMwYMjz4rd7yv8fg4njKL8R9bfc76IoDoBbhf9vzzTtZst8j29K8CV9O
         yd4IfpQaHodSCnqnkFr6duGxV799rNP6ljqs+qv/QyPvoAkr/66qNsrcUOAnYNPutxm6
         /9vI4JesiEsvWKqF0hMhn/7zUqCBfgb5DY2JhiaofeaWFQOYC5Q2ng2PN5r6GDyOCYJ5
         eRRa+FbOc75ST1g7DQ9QhJEb1y0DHlcmo4QNdDFzH3YgUpY6kx6Ba27Rui63gcZu7Shj
         lUNgReucy/OLZVVB+GzjagKkTQdbhw1znhVE9L8X9kzHoGl1ht20xP3PRyOSS365tYcy
         kaUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="uIs7/vU9";
       spf=pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9WcvxvnfrFVrvMzru2fsrNHZIJSohKUoGHw7W7ScnZQ=;
        b=RSLLgjJvEODGrt+CS1PwAdA/SrXdY568sbPKgWk8HdqW3frt8oVB58o2YPeK7cPp+S
         b1xTSYrt7ny9I+wTp8jNdotUomtIUDR1pRvk3TQrl0gT5XQ1zCgSd31k4oz1pXiRwFNF
         3T4Dq0WK0+qhhgH57UnZ3Z1QYrCAIZWnePrySxX2keMBls42tW5IeLi9TWQ6ZnW5oYkv
         c4QvYUN65h3VUHE1PU9ICiyRsynRf+KE82nqNt1e3CV7CKmWCQCOW05OgRMJbyGYT4zR
         AUoXy9m41PHh+JnY7QiB2yQrYLwJL524mK7aZr2q6kwBZ9Z8kkApuB30oOaewbv0ewir
         EcKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9WcvxvnfrFVrvMzru2fsrNHZIJSohKUoGHw7W7ScnZQ=;
        b=mlz/cj5eJTFOxO2lmPGowG0MZDDhzRjPKpffPnlQrMLkjjEXkXnLDZLswrZpohJqSK
         FPZc8Y+/09DLMus/ykJ/2SudZlMCjPKvhLbW8Yx/J5hOoIyMWY7AEBAoMb5z+Dv5tRFE
         c4WjXa5w89wBYwxoQ6wYnvy7GOmOxAKYm/IJjaE5uy0vOgU1qQzQhkmVzF7mamnaRyOe
         tGeXhTUXlntWTmeA0F163EtKiINr6R+DxUzgT4JWXxIQbhNLb/EDsIHO2ROlm9r13STA
         R8bDHB7SlLQ3skF+uI0dvbMjITem+AzQg5/V9GUx864kTby1u4PpKpm0eXdc4ikxcc7V
         sVLQ==
X-Gm-Message-State: AOAM532L9wzsHQpVFkyvwT6xzpGwSjktH9PEhHqJ9658d792oxO8Z44A
	8CK/TTC+Wjy2LVMENZjyOY4=
X-Google-Smtp-Source: ABdhPJzMpUdcWdDbh6gKJHLvnBD/THVwR8ypDUM5ahNTwq2oZioVhL2dUQnB/U2GYWre19Tgbfs6Cg==
X-Received: by 2002:a19:830a:: with SMTP id f10mr6706056lfd.28.1596391348167;
        Sun, 02 Aug 2020 11:02:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7c19:: with SMTP id x25ls2529934ljc.9.gmail; Sun, 02 Aug
 2020 11:02:27 -0700 (PDT)
X-Received: by 2002:a2e:7308:: with SMTP id o8mr6345994ljc.414.1596391347297;
        Sun, 02 Aug 2020 11:02:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596391347; cv=none;
        d=google.com; s=arc-20160816;
        b=MKcnUb3y8F+bcFkxCwD99jFB6Iru6Jo15u5AmGo8BklegTrtySvZrnD8unuMFnUMpO
         0DT3cXgJ00bRECZCb2AjSG9TMr+G9YiEtpsvlYZaW8Im4hn2OYMsxh+FPUQVgOcUHWaC
         G4gWRYFIWDLTC/yFAuLYF9zVqvWfPjG7zgllYKQR6iAM7e3jOtCmWlmD7WnTAA2jicdU
         POIpLp625JsSY7+gc7mx7FhZQ2Tm69EerTZr8LRaTL0b/tD3KuGnU0rmsIP+tTik/Oxs
         PwiRd1DFlhUfLASCFD0aSL/ODugSZedTh7MnbhwXcbfEG7jEoVXj/6oGZOh/qQxVo8ad
         y/Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=hIidJgHuEfm+QUxSjJcyWhB4lu2Xjl7LW3yKbJJeIh0=;
        b=xV9EcOZBQi9FFZfR8OeFiQiQh1qhQtUxGg+tkdvTAi+bcJDZdfVTD6IinVUO4I3x4d
         r48dG64wA++WX3RiwlvmkWVuv30ru6wf9eZOypDfw8hRrTEnQlDYkSAUQXeih7z8yakL
         zSu2IY+tlAvM3KYw5NZqsyzPQRahnMemO33WRzjQWtFPytkIEqG8KbOi4BP+spW4QFGl
         H3gIfT6T1C6pa1KFSimfbSKouffQTePGJeouXQbwOA3/TZR7rWPpczRFroCyh9/+G7AA
         e3QiyYoj/bCmY9EwTtZm8aTE0c1KDpXQv5UwCdv6FS39WjyIxBVBLTNmeRuBHmFTubg4
         QHdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="uIs7/vU9";
       spf=pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com. [2a00:1450:4864:20::543])
        by gmr-mx.google.com with ESMTPS id d26si65620lji.2.2020.08.02.11.02.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 Aug 2020 11:02:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::543 as permitted sender) client-ip=2a00:1450:4864:20::543;
Received: by mail-ed1-x543.google.com with SMTP id bs17so6920838edb.1
        for <clang-built-linux@googlegroups.com>; Sun, 02 Aug 2020 11:02:27 -0700 (PDT)
X-Received: by 2002:aa7:cb15:: with SMTP id s21mr12929126edt.175.1596391346876;
        Sun, 02 Aug 2020 11:02:26 -0700 (PDT)
Received: from gmail.com (54033286.catv.pool.telekom.hu. [84.3.50.134])
        by smtp.gmail.com with ESMTPSA id j21sm14090092edq.20.2020.08.02.11.02.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Aug 2020 11:02:26 -0700 (PDT)
Sender: Ingo Molnar <mingo.kernel.org@gmail.com>
Date: Sun, 2 Aug 2020 20:02:23 +0200
From: Ingo Molnar <mingo@kernel.org>
To: Mike Rapoport <rppt@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Andy Lutomirski <luto@kernel.org>, Baoquan He <bhe@redhat.com>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Borislav Petkov <bp@alien8.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Christoph Hellwig <hch@lst.de>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Ingo Molnar <mingo@redhat.com>,
	Hari Bathini <hbathini@linux.ibm.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Max Filippov <jcmvbkbc@gmail.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Michal Simek <monstr@monstr.eu>, Mike Rapoport <rppt@linux.ibm.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Mackerras <paulus@samba.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Russell King <linux@armlinux.org.uk>,
	Stafford Horne <shorne@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
	Yoshinori Sato <ysato@users.sourceforge.jp>,
	clang-built-linux@googlegroups.com,
	iommu@lists.linux-foundation.org, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-c6x-dev@linux-c6x.org,
	linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
	linux-mm@kvack.org, linux-riscv@lists.infradead.org,
	linux-s390@vger.kernel.org, linux-sh@vger.kernel.org,
	linux-xtensa@linux-xtensa.org, linuxppc-dev@lists.ozlabs.org,
	openrisc@lists.librecores.org, sparclinux@vger.kernel.org,
	uclinux-h8-devel@lists.sourceforge.jp, x86@kernel.org
Subject: Re: [PATCH v2 14/17] x86/setup: simplify reserve_crashkernel()
Message-ID: <20200802180223.GB86614@gmail.com>
References: <20200802163601.8189-1-rppt@kernel.org>
 <20200802163601.8189-15-rppt@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200802163601.8189-15-rppt@kernel.org>
X-Original-Sender: mingo@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="uIs7/vU9";       spf=pass
 (google.com: domain of mingo.kernel.org@gmail.com designates
 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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


* Mike Rapoport <rppt@kernel.org> wrote:

> From: Mike Rapoport <rppt@linux.ibm.com>
> 
> * Replace magic numbers with defines
> * Replace memblock_find_in_range() + memblock_reserve() with
>   memblock_phys_alloc_range()
> * Stop checking for low memory size in reserve_crashkernel_low(). The
>   allocation from limited range will anyway fail if there is no enough
>   memory, so there is no need for extra traversal of memblock.memory
> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>

Assuming that this got or will get tested with a crash kernel:

Acked-by: Ingo Molnar <mingo@kernel.org>

Thanks,

	Ingo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200802180223.GB86614%40gmail.com.
