Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJMVVX6QKGQEMKZWWYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id A57D22AE650
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 03:21:26 +0100 (CET)
Received: by mail-qv1-xf3e.google.com with SMTP id c90sf445030qva.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 18:21:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605061285; cv=pass;
        d=google.com; s=arc-20160816;
        b=rIUz5M9Jzr3zG+nkmXX9C5zpU98rT+dB/Utf+SYtjqBXSplTNf+mPD1rlzx5ZMc7hH
         ot+w1KP3XX10O8VbvuI361JxC3gS/Bl1RE9pWLc49JH8ZjNOXgroWssQ9jW4YaiVOcrO
         u4s6iw5dtCLGbyVeJy3NrszVWpd3qhFqboY5Dk8VDBDrigC6j4eFKCk/4rotNG1wICGh
         yCAFIAOw7W4nFZ0Zx2+jizYpZogOWhaNiYWxVJ9kbSs6RVI+zhS2ertWTdaXXYJjBnO/
         l3ckAO6fDbuaIN2qnEvWTYOuWGjX0NYaRmeBeZKMQiGJbzAQ8U6nR4ZFw2yBiaJRqURM
         pVhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=Qjjf5/CRrgqDU7AgK02rpUWVN9LGPPRsuPXZx5jFhqo=;
        b=bqKI8MpdBVkx6kzMkais6MnSHjZmQ3WS8zTGqPVMgRYEB3aQKHUnyNSoF/zLBNYwFM
         yicYqjrBWMG2cwd01QqGkH2291Szqwth9LanDulJBDi1e7rS2OC+9C34JFsp5lP+CSPh
         ZrWSk5lmg9zvBlhuLWopZhBJI/mF8PpIQJSEpAH7hFZHIv93O2IZi60If5yQSQKJYsGA
         rW6ryqo765EiAhkRqwDFNYa1NygAi3LH3cLHGU8OsZdV5KCWCLubz3bqHFiTCrcq/cf5
         jldT9Utn1dhDgYdb0gof1mY9Fe+f5uLXo9C7yce8ek+RB6BTVkuf9pymKjCaThKdrA/b
         O13A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=k+jciPx6;
       spf=pass (google.com: domain of 3peqrxwwkaokyopdlfwytpcdrzzrwp.nzx@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3pEqrXwwKAOkYOPdLfWYTPcdRZZRWP.NZX@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Qjjf5/CRrgqDU7AgK02rpUWVN9LGPPRsuPXZx5jFhqo=;
        b=C1zCX1KHLoQsBueog1UjJxZwEwjkjxWSHtPCdkI/iVmVfsfnSxMjb+gOaPaGCL7oPy
         FKr+ur5+og/5dqAouNZw7nLqZM03WTLsmZa2o4niDVnAD1XudlzsHafL6FcEAZEgFlsT
         SVbOnuXzR6qi5DeRJlpIugcXHROAA3gHwHst1xHUArcTq1oOfKOrdzeIwd+sQlfI0NRC
         TJgI1IEQr+sME0E1KtmSR44J8DbfUTgKEUo90YQOOSpRFztWONof5HP0opa8udwjnnEq
         OqEBinmNCN2L/dsfA5jXNVur8+/ykZUw6BsrrOJMaY9EarZtcIylLsJTeGHN8HM3n01B
         jukg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qjjf5/CRrgqDU7AgK02rpUWVN9LGPPRsuPXZx5jFhqo=;
        b=Z2xENn3uXqVMCe3cBWNpFTMknu4VXkPMyK6Xvaq5XnuiqKvM9688ixiDvB/zeA1pCO
         ZXVJdVacxsQi6sLl6tHsdQ7luheEEZVUQK5Anv9KEevwv5ZBOoKRzT/6+zSPkrHksSek
         /177QgjprkFPTHtjVXaGOQm/iqOQcrWnFF07rQtTbSUINXyTO87DRIJj0PCKCZeN0G+g
         czxcQ/NLjPql9SzATY7WGF1OZCjqOh/J1wmu1HVKFXm3p+YK/giDx4JD5XIVF+3TPzXU
         Ej2/OJIcfi16XhCiXUEKIyEWdHAJIXzMlWTCa1RMFpq4qGeFMZBnYWe4L1aR4fk5+/Rt
         00BA==
X-Gm-Message-State: AOAM533c6Tybsr+Qcx+T2txhETnjNJxLDDbnlENl2ufj17zTqkosr7au
	n0151fGDe2meB+h1xbK3s4U=
X-Google-Smtp-Source: ABdhPJzS+UuSBmkMiUYTi99pFaSMBJQjXeEZ+nrY51ZRghIlHh0nC8D5T4zuzFcsm419cRHLMpIr2w==
X-Received: by 2002:ac8:7159:: with SMTP id h25mr13370598qtp.63.1605061285268;
        Tue, 10 Nov 2020 18:21:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:152:: with SMTP id x18ls3157623qvs.10.gmail; Tue,
 10 Nov 2020 18:21:24 -0800 (PST)
X-Received: by 2002:ad4:40c6:: with SMTP id x6mr22919305qvp.20.1605061284802;
        Tue, 10 Nov 2020 18:21:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605061284; cv=none;
        d=google.com; s=arc-20160816;
        b=AdvV3t6581H20zfjKoxT08JGpOAhPmTyKNVxbeqnZkIDYOtUkDCiwQJCF736MFeQk8
         7/Z/HZfgq5jgGBZM0xdpjajFcW6lPQYt9WOKRqgMTJGCUoDoeXD8AFOY2I7ZSOqiQyOo
         UjY9mNOCOgw9/nVSa1j/xD6CzWEM3OCh+bhwrzp+QTdtNZ6uJh/3gRoUPHO0s4VdUDeq
         04q6ZBMmnLKDeqC7a1CnTA349RxTrHc7thjLq9azHA89VQgtdvYlC3iaKi0hfuqjpgwX
         kgeLmjdEamvcyZmOvNLf40/bDrsG/l6nNtLq/XcwzZKs3J3XcYO/UTdb2TrvdFHiW7ux
         eVdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=C5CJXWtztogE8YGBqU6z1Oq0yEo7wNJFt1eX9+HlMtc=;
        b=y85fRFzALJ9+6YoF8YT2pNDX+5Tt0S/ZBPLSELZB/RruKGl6J1GSVLPo1eRE4YSBj2
         sdmEqryQmvjel0DJ5DEslaJYDDZA2iQ2Vpg/ydcpuiCMYbdjt9zO2BuVAOiAfpFlr+Ge
         kCCE37LnX4q7ybO0vqE8O0Xq9ITxRlEjxbR5QbIkASuVZbsW1ryqWVDKxHd4eeJWt3ms
         OjsE4MAD9TC4ZIwa36H8ANe/JTmfeYDW6m1wkhrfn7RH0asBru+1GPLcsXEpQMaAifEF
         segiRCFXUAbsShM+KVnHUlsKMQt+N+Thpo15mQLi0oZPQ4tnYfVfRZpk0u3W8aI8Wmwm
         9NHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=k+jciPx6;
       spf=pass (google.com: domain of 3peqrxwwkaokyopdlfwytpcdrzzrwp.nzx@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3pEqrXwwKAOkYOPdLfWYTPcdRZZRWP.NZX@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id z205si51445qkb.1.2020.11.10.18.21.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2020 18:21:24 -0800 (PST)
Received-SPF: pass (google.com: domain of 3peqrxwwkaokyopdlfwytpcdrzzrwp.nzx@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id h9so824148ybj.10
        for <clang-built-linux@googlegroups.com>; Tue, 10 Nov 2020 18:21:24 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:8809:: with SMTP id
 c9mr30786370ybl.521.1605061284396; Tue, 10 Nov 2020 18:21:24 -0800 (PST)
Date: Tue, 10 Nov 2020 18:21:22 -0800
In-Reply-To: <20201029101432.47011-3-hch@lst.de>
Message-Id: <20201111022122.1039505-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20201029101432.47011-3-hch@lst.de>
X-Mailer: git-send-email 2.29.2.222.g5d2a92d10f8-goog
Subject: Re: [PATCH 2/2] mm: simplify follow_pte{,pmd}
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: hch@lst.de
Cc: akpm@linux-foundation.org, dan.j.williams@intel.com, daniel@ffwll.ch, 
	linux-kernel@vger.kernel.org, linux-mm@kvack.org, linux-nvdimm@lists.01.org, 
	Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, 
	Christian Borntraeger <borntraeger@de.ibm.com>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=k+jciPx6;       spf=pass
 (google.com: domain of 3peqrxwwkaokyopdlfwytpcdrzzrwp.nzx@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3pEqrXwwKAOkYOPdLfWYTPcdRZZRWP.NZX@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Sorry, I think this patch may be causing a regression for us for s390?
https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/432129279#L768

(via https://lore.kernel.org/linux-mm/20201029101432.47011-3-hch@lst.de)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201111022122.1039505-1-ndesaulniers%40google.com.
