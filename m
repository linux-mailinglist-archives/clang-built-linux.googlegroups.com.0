Return-Path: <clang-built-linux+bncBAABBC7ZVKCAMGQELMPDZQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B1F36EBCC
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 16:02:53 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id 32-20020a1709020123b02900ec9f6179absf16521148plb.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 07:02:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619704971; cv=pass;
        d=google.com; s=arc-20160816;
        b=USvqg0BAm3Kg+wK0B8szVIpNbUZoH5HqDrVS5npNRtzGb+B1nx6LvRoyYO7PG/n1jt
         7yTs/OZf7kgPHXaJrjgIjyhDo/F67dInkM+X3HqtDFPTt5C8mUJ62mPFdzkfoGVIoFW8
         Su2FniUxHNWGI/RDmnoMjzGIjZuJ0qtCvp7WDCJQ9zvRb4RMa/LzoUZbnGVF59o1kSJ6
         0CaWfXIFi/dRcvsVH/DNH/ZV2c44dsJDHq4UncPCePmFSakVrOMrdTAjH1tiZb/5zZsC
         LKOe+n+p4HMiYcVXMBxP+906UI3wZxj4VdPStHNsTcfn1i8BxbpU+llaLi7abDbo89U+
         oFlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:date:message-id
         :subject:references:in-reply-to:cc:to:from:sender:dkim-signature;
        bh=H6IAsG3Lmk8ymuR2trzqXpiCJSvsBFJYsVp0d1aVJ0Q=;
        b=g9tawPOPw7P37CxD9QR56H2v5emTkoQiYJomeJbohoLadqgBCoJs3Evq9+isY39ur7
         iuZt+Uuqt+vIhvPeo0rS9WvC4qqfHAjNvrOKl/mnDRFiay44aCYTJ9YAthiEfC35B2Z8
         Zg3DFvKmmPOjQDHcQDYWtUtE0a8zUgxGe2XQOUPGXs67UcjmjrZE2EYgPKP21YHTiFN8
         HBQNo5pGv3uKLYc5inPRYCHu1vfBYxIURPWsi+7BsVbJctvAz/D08pMinV4e1ZWQyf9f
         obAqBoPsHbRXm2EKbhKOM9rCKrqyxoE5EO+6DQwCgwbmtpwYvXyLJH2VBJbqyNSk1QDp
         9Guw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=michael@ozlabs.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:in-reply-to:references:subject:message-id:date
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H6IAsG3Lmk8ymuR2trzqXpiCJSvsBFJYsVp0d1aVJ0Q=;
        b=s/PdUiCoEoZuogK2HIO2z87Fj7p7raoNC5PxiLAtVtDIAuctQHwPgdPal+CH7yexdJ
         qX7QLL34dEgD8hZ35C1eCJOqgILW5QklNdVi93JZFPwk+k3AutLfUNB31TnOlTZgLy+k
         xRBxX5ETGFLJDcpGTnoMLfXfL5JQSSwYfeWWOhqrxk6cSA4iy5b63shAMLwWViVOOL5p
         wsZqJ0330Kxv3cSQEOo9RI0IRXi2gMyQ7GslmM071rXyl3CTI6XicqfL0n03eAh8aaFc
         4m78BTBXSR2JpvFubjdZEhmSdJ31P0ZXRHm4drSujCSr4sO8qcZJbqjOG7IA7I0YwdMg
         pokA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:in-reply-to:references:subject
         :message-id:date:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H6IAsG3Lmk8ymuR2trzqXpiCJSvsBFJYsVp0d1aVJ0Q=;
        b=gIuzfbdWSJhVlVQ9a8ra8+1ZNNhHXK5+yooqlL+lXOqoRFHS6PH7ELOyIbkddUOXrW
         VBvBGGhltq1hB40odxikIDP3z00H0KtNs8WVxMhmP9SKxmGrpo74dwIR/JGrxEBCDMVP
         Ujr4ZXBx58sgPbHYKK+UMJrCCoGR/yEzECQYR2eWarteSFa2ZuTZjzbIPlbBFIJsDImm
         XahC8fpJNyojwSsGiDOYDhFQVaZEG0Wn3yHvvylEnU/O9ZHIArQT4OIxPdHAMVMtJKCl
         z0rcUX/t1fQGkOdjlJfnZFGKYIWOTGP70ehYfekn1hZstn47BHpv/jNGuLp9eJHjranW
         rvcg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533+vDqXs1E5j2773FVHbgkOeFiy3DZulU7x/NjeIQ+D7Jws2lC0
	NIJK93xEEcPut99vIeQlZn8=
X-Google-Smtp-Source: ABdhPJy8PlNkja1lsFPVTUhpVROicDfQ0mhv+22TFBeNtt8IcnYKw6zrSXjM3lwk7DoN7Zj2hZK05Q==
X-Received: by 2002:a05:6a00:bc3:b029:258:17c2:d19f with SMTP id x3-20020a056a000bc3b029025817c2d19fmr124247pfu.5.1619704971637;
        Thu, 29 Apr 2021 07:02:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7d89:: with SMTP id a9ls1646262plm.7.gmail; Thu, 29
 Apr 2021 07:02:50 -0700 (PDT)
X-Received: by 2002:a17:90b:2355:: with SMTP id ms21mr9726609pjb.226.1619704969899;
        Thu, 29 Apr 2021 07:02:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619704969; cv=none;
        d=google.com; s=arc-20160816;
        b=P62d4BkrtNKRuG/LnKF8xUuDR3smfQZti160ikO4QL7HHGZ9wBQjtJmjGUuhYbjDZK
         Ftr4O+UyZjWcnyBflAbNZaELhIQDRA7U/0wE9o659LfqSGMQnGjVo7QngkIyYTa5FFwc
         g+22wEojnHR5/ob3XCdB2+qCwBSUW01yjKQ0ICFIRs1YewIbIK5PC3KZETaAchbDHKTz
         1h51Yr0sSyWehR0oq2yJWQ/AMbjHorsKUTGIJgH05wbKFZde5fqW+N+CVvSsgR1dhmDY
         4HHV3nhE1PKX+I+uQG/38v1O4Xyt1hI8UclmL5vzYYEuyr5imZ1LCsk2MHi2DmS7i61D
         e8hA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from;
        bh=O2yYmJ3wNeFxnmRxM3Uv9a5okNaGF6QTZaAwadkMyYA=;
        b=XCL3lgb480DfgS0PkroyBaft6TKWgfew4I6EOqje+bTWISAj/lu94YY5cJ7E/zYXxt
         HVKzt2ZCaEKiLeCZZiVEoRdLetdzLAsj0rpZJvdXdir8NhsQB6zeHe5mqbLEdPQsO4aE
         XuLB7SYEOOEtIA+XGbbKJ6Q7IOLq/JLE2exjeGeebNB2gKoLErJRHCyFTmj9s1giVJDi
         AvqFLXOcM83THsJMCuVao6SsWe2e6Es/xwYS9WWP7ynye03nQAVLLr15H9bEHMwKJtYo
         KYSl+gGwTKWhmPSd5wVm4mPsY/OtA44aojZ8pTQ0qWJ7ooHO86V51B4cakyk99dqtnAU
         FLcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=michael@ozlabs.org
Received: from ozlabs.org (bilbo.ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id p8si261823pls.1.2021.04.29.07.02.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Apr 2021 07:02:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: by ozlabs.org (Postfix, from userid 1034)
	id 4FWHJK6k2Bz9sX2; Fri, 30 Apr 2021 00:02:41 +1000 (AEST)
From: Michael Ellerman <patch-notifications@ellerman.id.au>
To: Michael Ellerman <mpe@ellerman.id.au>, Nathan Chancellor <nathan@kernel.org>
Cc: clang-built-linux@googlegroups.com, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>, Paul Mackerras <paulus@samba.org>
In-Reply-To: <20210426203518.981550-1-nathan@kernel.org>
References: <20210426203518.981550-1-nathan@kernel.org>
Subject: Re: [PATCH] powerpc: Avoid clang uninitialized warning in __get_user_size_allowed
Message-Id: <161970488758.4033873.8885072573106528353.b4-ty@ellerman.id.au>
Date: Fri, 30 Apr 2021 00:01:27 +1000
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: patch-notifications@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=michael@ozlabs.org
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

On Mon, 26 Apr 2021 13:35:18 -0700, Nathan Chancellor wrote:
> Commit 9975f852ce1b ("powerpc/uaccess: Remove calls to __get_user_bad()
> and __put_user_bad()") switch to BUILD_BUG() in the default case, which
> leaves x uninitialized. This will not be an issue because the build will
> be broken in that case but clang does static analysis before it realizes
> the default case will be done so it warns about x being uninitialized
> (trimmed for brevity):
> 
> [...]

Applied to powerpc/next.

[1/1] powerpc: Avoid clang uninitialized warning in __get_user_size_allowed
      https://git.kernel.org/powerpc/c/f9cd5f91a897ea0c45d0059ceeb091cee78c6ebe

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/161970488758.4033873.8885072573106528353.b4-ty%40ellerman.id.au.
