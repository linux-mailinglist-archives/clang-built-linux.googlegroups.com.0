Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBJHA774QKGQEU7PCLGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 3388324D949
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 18:02:48 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id ck13sf1288480pjb.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 09:02:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598025765; cv=pass;
        d=google.com; s=arc-20160816;
        b=WT4pw7baXS0wniIH9zBAXRCPFdtAyPo81LRBkZC0dNpPZVuxdLHGneCreIjURCFhGC
         ZOOP8YrbEfFVsKHn1xnfqDLDFNmSBYjU7r5357bc5nb5IlwpQLNKnlmEv2pL5JqTkoM4
         oJWJ00eV5sgksvT3cZHNMDC6mUq7rCHLEsQLNz8kaTsE73WSe80luKNpcOlZ481IAtKN
         uttk5aPYQTNurmRKS5OhRv0wy6TTM3Jp1TQWgKyfdv2U/O5lSTcVzHPwwCciyMg9lb6v
         fdQb0iSv8kr4yAwr3T6ClSEZvsmcJ4yQuMRvDx3TToycHlYItxLQE2iTfGo4Ne9hkqI+
         LA+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=DMkr68WoLCyZr4+t0Jt7Qte60+Sc5X9S2h0Ly+gEvXQ=;
        b=pybBJGAKQrOxYq03BqJOoT/wy+4SunviXdwJvQ1DEvxXSywFV0dUuKv3+yzx6SAoKh
         /aZZEzsLJCgNFb7hMOpH39lf0alg7+1q3gPTeD8hLJ7A5ViyAlibLP3zkb6CWNON3WcJ
         NUmsuMwj7oec+Pgu/VhjuQ+ewhDYEUXx3AesnFP1EU7CwvhgHx+TMye0dbYR9kckFxjT
         lCtrbKkVqjYmkq0o5OaQZcSY2EKrBtwY4W+CFvIZZkrTGCcDK4qTB4cDsdyBGd8WmoNp
         DN2g1ntyaaIdDFoJ4D1i1IWM8lWtPC58RU0KAOn0d8asrKXT+Y40aY0wmWxTdoS+1y6c
         q1yw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qtiOLcTN;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DMkr68WoLCyZr4+t0Jt7Qte60+Sc5X9S2h0Ly+gEvXQ=;
        b=GQmO3xFweICBciFWZVqyQE7YeQ7TB00hd//zsKNyhiQng1tD6GkVjHKKy+xDfbabmq
         3zIAin3mfl4uLo0Qlcy1QuUkR13XGXsIGRVTrJmajaTeZsuJ87YFElc5WBm8C1NhMJKt
         PY/Jbt2lwZwWu76/tt9Du9nTNZmnD+BPwxHvlUmSRBc565SeK5Yrt93UOXylonlsH4ql
         Z5F4fCnOHBFQS42JVBXWt1J0WAYT9qRCF4uvCkEb++FQvZKlpWPv5r/y2ACL4StVJ3cA
         Obnxtg1z/HXQzO1djbzlOAKFz6PS3dmAgVxAqigHgzJgrKdZeiZ9HAFUaRB9A4xaJQOn
         lF8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DMkr68WoLCyZr4+t0Jt7Qte60+Sc5X9S2h0Ly+gEvXQ=;
        b=DVLYMF7dXnAdK9yRv1TKmclCBV4HG9iF79b1J+ruSTtcm05rE/skJyPRNeShKo20a6
         gTPKWJj5lBbpssY2F4QCYYgDpXuU42+SjrjHqusT9y2a1Vb02J6st841DjnQItUrfU+z
         K7gvP5hqRhyUJYM6EyDvsQl9Cl6q+fg4RxRi6JHCSsPjZt6zFiIIOVPE1CGF+iVkoDQb
         glStDfk/veZpDkuvTyHCJXyrBhrDweG2ON8gpK0dPMfUSbMu/X3F/j+wSu7mDa4FytXx
         e9HVFBBj4svaJxdmnHsNv0HDEnQ4zKAoyvXe0iO9urX2V15EuYJjbffvD8+wwYLPtfK4
         jI7w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533s2taKmpq2dyL0R4C+IUqOwGgV/ln/ycDu8WNptaMom3gFSaNK
	ALLhWMyCdV9dSKp1W72e6xk=
X-Google-Smtp-Source: ABdhPJx5Sk3GKutna71ATD85wmNZ8hW2YDfx+MhEssvKXqt+njIlOdJu1WbgEmLbtc3lmkVgtNfBhA==
X-Received: by 2002:a17:90a:e508:: with SMTP id t8mr3093640pjy.32.1598025764762;
        Fri, 21 Aug 2020 09:02:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:142:: with SMTP id 60ls1255147plb.9.gmail; Fri, 21
 Aug 2020 09:02:44 -0700 (PDT)
X-Received: by 2002:a17:90b:4ac2:: with SMTP id mh2mr3109441pjb.148.1598025764316;
        Fri, 21 Aug 2020 09:02:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598025764; cv=none;
        d=google.com; s=arc-20160816;
        b=P9RhrowSq5fHiLXEEV/9O3K8dVs/k8emKbD03DrX7JvMQd6otGcs1Xqe6vlHGNdRMD
         JD4TBcjpaWAA8eAmrGoBGVZr48PfHMCm2QUGQIeWm7sXlWM9ujdGvH0I3jp/+3nnNHTO
         obum3W7GSXX8yXPvzqmi59G3VZ+WOaQmuNb8k42+2eESC9x/0VHT/JKyCb6M/cf0Kd0C
         JUjp44NQSJnrFTJ35QpG3D/6QBhIv4rSXzHgtVV03FhvNXpn16bO18DiNpsuI7uYdgbT
         wNE9sn6tfoL5tA+0uOAikf3dnS9lYpO7sMNZXgPvg+xSmgug5r0sAXWr/Ll4+gTKk3gE
         xRJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=bVxlYauOODt5UvuiL4qlg3/4fXBWfUekdVF6gpHL2NA=;
        b=cdfr8R8Dlm8/sDoL9ca8vJkA9q4FN+g980Alb6GDu2JLUV/VLfj4RX47ISvMgSjkfi
         fbgL3MnVKRe/+QQCX5+J69+0+10hqzDTqnqtiTRViCORBXlPsCQ4BJwgkZiRg48n0J6L
         hGW8gvQoVuQEEhQuIjmdzeDkRtNfjJe0ByBn4yWFx9xjk6WqryIfsuRjAcpDG48FMMj1
         f45MvfIbenUEFS7Lwgb9gkKZ2WHP8ypJ2OzYV4+1N+TOsIMP6oX1cN9fmDBh6J2BoKOn
         DHD8RwElNkf8UaYujuJGWQ1PoreQvsRl10c+2VAttpEWQUSKZdHfHIhWb52nq64qSGtM
         dMOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qtiOLcTN;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l26si178754pfe.2.2020.08.21.09.02.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 Aug 2020 09:02:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C1045207BB;
	Fri, 21 Aug 2020 16:02:40 +0000 (UTC)
Date: Fri, 21 Aug 2020 17:02:38 +0100
From: Will Deacon <will@kernel.org>
To: Kees Cook <keescook@chromium.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 00/17] Warn on orphan section placement
Message-ID: <20200821160237.GB21517@willie-the-truck>
References: <20200629061840.4065483-1-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200629061840.4065483-1-keescook@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=qtiOLcTN;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

Hi Kees,

On Sun, Jun 28, 2020 at 11:18:23PM -0700, Kees Cook wrote:
> v4:
> - explicitly add .ARM.attributes
> - split up arm64 changes into separate patches
> - split up arm changes into separate patches
> - work around Clang section generation bug in -mbranch-protection
> - work around Clang section generation bug in KASAN and KCSAN
> - split "common" ELF sections out of STABS_DEBUG
> - changed relative position of .comment
> - add reviews/acks

What's the plan with this series? I thought it might have landed during the
merge window, but I can't even seem to find it in next. Anything else you
need on the arm64 side?

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821160237.GB21517%40willie-the-truck.
