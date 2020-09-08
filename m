Return-Path: <clang-built-linux+bncBC2ORX645YPRBPXM375AKGQE4ZZIEGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5182B2621E1
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Sep 2020 23:23:12 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id s12sf379566pfu.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Sep 2020 14:23:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599600191; cv=pass;
        d=google.com; s=arc-20160816;
        b=nW2YTjEys2I4xDNmwPCidnR/S5e+fP9asx6lNANGu5QHsEBhyCgSQh9D6026ysOx4t
         VKB+80qsPaITDzGMB4Jup6TMf5LkBVRFxek8im7aTMjDhk76lWrhP+Leq6zx8hbIUjWW
         abbcKuoz/CXx8Wke3yrQrH8F9JF8xvZxM4BoBfdg2XXfcjdbvPaGZxz+SZ9QhAzzNchm
         WXDAQHpcDdO9xVCCKxGGathItWrriBd+Xx7MdkVIwFZ5TSPUm80Ne/ZG/UAWbEg9S8iZ
         zd8XASvgAzeLU9JOdaIbWMvDmPXDOjTBHYdg0JJpTa8RLa9PPXcNH+IcSwH99TZxM5xP
         tSFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=qhXJWTz7YSwUN/67ecqT9bdlhCEPwXnMqxv3LCugvgc=;
        b=xiWT5RTWz4sHHfS61wsLumCyoiLdb+M3mESvllxGyMY7CQrVog8w08pbHWUa4AYavv
         PJJnFxGr1A8MwbkClWtEvwvoukW9QbqZFFJijVL2GqC1HNlJMJqMHUjrkghuyldsxMXv
         uGSGel7Fc5jTeIK4lckr/0KIhOpOHDOR1fYaRrt44uBJjkqK/qUoHiq9dAa9vxFqcAr0
         tg1H7ZxKZSf1mr0k40R8mD6o7shg4BVieI5Y65H6rFjKcfKp/TbolCLCOkkfRgutepw2
         3rx4Kus0q7q1+G7faIM8dyZyPIAwMdr23Bwy08raULfFWXZ9ld9SQ82d+hfxT2OlYWZw
         W+Ag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=W3Pr3Jck;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=qhXJWTz7YSwUN/67ecqT9bdlhCEPwXnMqxv3LCugvgc=;
        b=d/j6o5yqezrOgOVjBRzsVqzP5hReQAallcJ+DbEZHpyOndQBM3N27P3MxH8u38HW+/
         ZSCfQ76OAgO8eD/CtypfXNjxdxdMpswS9c7bl8f8DoY2u0nucclSdmzCDkGlJgyemZgD
         hjW4UyGO3N07MOBO96n1Fnq1F1ifSRlIKnS2OCuENPCG18ywE9fMcTS7P+5NZDuo92J3
         9Omd//eMnj56UHXyrlOlA69Zm1LAaqxEY8fDS/22YZ2r83Indiimn49VN8JcKjLRCZCj
         Qp/7RvWG/My8te9ZdiSUH7woW0L/6w0a8cqvyBW78PNPq9X3bKAK0P+JKpw+eih3Tlwo
         NZ2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qhXJWTz7YSwUN/67ecqT9bdlhCEPwXnMqxv3LCugvgc=;
        b=tGduE9bnsWYUKsC7D3zAp+QFpZR8Wco8J0E/UBxvrDX78m7noFRBLhY/+6QQYkYxOG
         +W9nEqlfY1qKFYO1Av9JFeBvg4grrDB1+fLobWwDqxY2Kb2Kkyv/81s9Z5UFGB5/xqSK
         O/yWe4vJQSuXuJblybfy37krM0KwmVRSGB2kruZgx0ERq/PHCcPRxOJZghRzCI6W9UtE
         bCHIlwoQLuCsQr73z1TKL533cd4EjtXCZmhW655O1R4L9pQS/iW9BjMeffFG84RgrqL1
         EAG2dZkGvxwSWYn4BFU+H7BhgBNIXGC2PVGMqvCpd37NZkuu9qBZ3tKLwr7aR/B6/Prg
         fJFA==
X-Gm-Message-State: AOAM530hszot2PW4omADZ9hrd56AEV6cxfp2Oc1n03dEI/MxwSwvcS5u
	MTB/oCXieIvISpvgYsOX/9o=
X-Google-Smtp-Source: ABdhPJx298O7KJjEAPXvLYa2AKirAI/LJUzA2BPjIUfd59mMqzKBCXI2yqQWqrMogCqz//PFda2i9g==
X-Received: by 2002:a17:90a:d596:: with SMTP id v22mr702141pju.146.1599600191045;
        Tue, 08 Sep 2020 14:23:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:4812:: with SMTP id kn18ls246403pjb.0.gmail; Tue, 08
 Sep 2020 14:23:10 -0700 (PDT)
X-Received: by 2002:a17:902:ff12:: with SMTP id f18mr553631plj.118.1599600190427;
        Tue, 08 Sep 2020 14:23:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599600190; cv=none;
        d=google.com; s=arc-20160816;
        b=WPgdtKa2p+hcWj1ra6Y38gcOTP4zDuPNVih98pVLkaa9r35HhqvGyvz/gCTsGGM23q
         Wde8Z8jMPV571zaNTzVqok6QKUIfm+YjBA/tJjZQ90zDtOIegna+kEi6zvJ4z9RiTBSU
         /BciPZnw28UzG9J122ZkPGsl5qPqb0vwtToBFXL+gCzyHPwcF2Gy70a/ARAUH7SQcKck
         4aB0MOa2cyY1wLF9911iUJN8+dF4rA77crzr7xmLxEycZla5cRUxywLaI3LsMQLflM/w
         QdfWB0LvOLoWiSe6x7vSsi1cE7dn2SsE8Nnz2ZfWdxW8mjxozJ0RN4KXYvSTpS0fsetE
         lf6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ih6QbdC2BlMXbYNA/XrG1Rz+rSEU4l2iSukj1ZYcfcE=;
        b=MTSw0sBU404dvwxUeHzGr5rYsvLUg8M18KbcDQEcsMIEtycIID9LxQOwjHiMCrx/0T
         e05FuxAd/YjqLUA6uQBBW1NuScbcEiKcCOA+6LXTwLPgCtjhiKz5NfJLvWR89b3p+ye6
         k94NebefwOlPLW/iqYojPImQY8EOxguFdgVC33OMJlSEWo2gguIZe94qzN1Ug/K4ZgPn
         RsEQQDEkdGiG+A4iBtF0vVGzCDqrvqUQbdshuAY2Gcz2e0Zl5bIKL4QHklSND0/8gXYX
         RN3tGJxg5/0XjaN0EdJu6U9djb/nAXL3SgRERGzf8Rme2aZWTj9bSIfIRJq5G//aIxVB
         ZJrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=W3Pr3Jck;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id w136si55343pff.3.2020.09.08.14.23.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Sep 2020 14:23:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id o68so361487pfg.2
        for <clang-built-linux@googlegroups.com>; Tue, 08 Sep 2020 14:23:10 -0700 (PDT)
X-Received: by 2002:a05:6a00:1356:b029:13e:d13d:a084 with SMTP id k22-20020a056a001356b029013ed13da084mr947839pfu.27.1599600189879;
        Tue, 08 Sep 2020 14:23:09 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
        by smtp.gmail.com with ESMTPSA id gk14sm161668pjb.41.2020.09.08.14.23.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2020 14:23:09 -0700 (PDT)
Date: Tue, 8 Sep 2020 14:23:02 -0700
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
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
Subject: Re: [PATCH v2 22/28] arm64: export CC_USING_PATCHABLE_FUNCTION_ENTRY
Message-ID: <20200908212302.GD1060586@google.com>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-23-samitolvanen@google.com>
 <202009031544.D66F02D407@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202009031544.D66F02D407@keescook>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=W3Pr3Jck;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::441
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Thu, Sep 03, 2020 at 03:44:18PM -0700, Kees Cook wrote:
> On Thu, Sep 03, 2020 at 01:30:47PM -0700, Sami Tolvanen wrote:
> > Since arm64 does not use -pg in CC_FLAGS_FTRACE with
> > DYNAMIC_FTRACE_WITH_REGS, skip running recordmcount by
> > exporting CC_USING_PATCHABLE_FUNCTION_ENTRY.
> > 
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> 
> How stand-alone is this? Does it depend on the earlier mcount fixes?

It does, because exporting CC_USING_PATCHABLE_FUNCTION_ENTRY doesn't
change anything without the earlier mcount changes.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200908212302.GD1060586%40google.com.
