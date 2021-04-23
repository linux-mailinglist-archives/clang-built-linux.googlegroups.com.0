Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBRH7ROCAMGQEWNLF56Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D41369803
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 19:11:33 +0200 (CEST)
Received: by mail-ua1-x939.google.com with SMTP id o9-20020ab054490000b02901ec47f004b2sf1984686uaa.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 10:11:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619197892; cv=pass;
        d=google.com; s=arc-20160816;
        b=rrY8sEFJahyPcsvwOpEB22demQVNcq3EV5YW4SDnQhWuFE0vwq1ypqLhDI8Qbw/U8J
         2DknyYdb4phOarJl7WyveQHkU1HDLFzkighCk2WYCS0OrgrCvJCL+fjDLZ50d3sp2QtA
         FljFT1GyZ9zXdGUfPBbRCFoERT5GywtNK4vt3spVHM6quYLpiCTGYlrlPxt+bDK3vO0/
         QfKB3eGl2cASrhCcKKgsmkqacnhBUoXffxMC8BHGE+xTz+e4Fp/fEetG2+I+7dlVuCNi
         5IBkNN/zdjPPx24dGEPjOItDq8yzDsPTslXrTO/X3FUCxULssxWG2tiK1TbUd3mmRpID
         RE/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=tZ3tXToVDlmyeW6RWx5M7y68Q4emmGyCuu0run+CFBY=;
        b=JkBGPoL8N7lMugwsge6K6NG+iDPmrRRv+ugNaDQcAVU3ywbj4ChmkyKXZgK2Lj3a8p
         3u7oRmgM54/v6xsH1OcIhUnuM63BGF0QxP8Q2AhDUq+rs56qaYxmQgobcQ57HsfVoMny
         /5GyOqmYl7/rb7HQBcxuLd2SJK2q/2SGshdoNYxQ4YzR/SeIarAfoQO9y+h6oICkmuNe
         djh/sZPu/DKdZuWUlhbeniUwqaX/4oTgJVDeb9yBtBvrF5Zf1/031k8r4Q4VUE4RUDHF
         YLb13O5djR1WFrYBOiUW29CCfRFNFw/F+TUdhO/3T8wkbgu/FD5AqEWJw7GKlFT5A5P0
         oN6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tZ3tXToVDlmyeW6RWx5M7y68Q4emmGyCuu0run+CFBY=;
        b=lCUV9VSd7NWp6Ph7O4VPYvIMBdheM7BI8Pqu5TG/zwz/Tjt/LOGQ4S/ECRCkUlip2D
         VMGxAic94RwZ5r8SX1eljNTsfq8R0cRMlEd1G0y6g3OQkuT4zLNm9IXSetEzaZp8FzOd
         LiU7TWKxMGL29B6il+WRcVF4BOMZOn2ZKUHFs2zOns+HydYAqvFyJ3waGXoWFLl8jYAO
         S2zGgavTkxUwsr4XKuWO6nc18TjJ6AD+U8e5+jPqL+zMTeO6jlunDmBwVXemqcAsmWpF
         /N2sPkw2KuqIcBX/L4BQSavz/l0eGQM/81PzcHuV8PMoNuwfXGuqyzuVsnnAx82fOAel
         JJoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tZ3tXToVDlmyeW6RWx5M7y68Q4emmGyCuu0run+CFBY=;
        b=Qc/Tl0n03hlucRXi2z54hGmQ8lVvswt/tofjIpx1tfYt6rBNx43Mgx/XmcQ7l+ak1V
         bHDPRyfeWXmj6ez7NNcLLD53w8cnIVNm/4/+olTvFuAnVWRTUzq9rLXfbtxAoYGpHj++
         UN6gL20Qwrh5M7/iUy8zGye1ArXtPzJRN+N+pxbGh0dEEk+XQXZ3Lt9JlDGwq+lJq0fm
         oMMT1HMrhDbByQ+O3wk3WQAvzpETftOv8E50hMsHejeePqPtr069bDNFGdTzy+YAI0Lt
         FmPxyy72XAj1VA/iDOfUBh5rtM8u7rLfYsm9ED4YBk5kB/HcTX6Kbr8FnZzJxP/1Znm5
         GaeQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532JjPcE6uUhpH+m+8d7XiitZO0ntP9bKFb2e6xHlxbUB/zevgSV
	3tpAXRlU9S8WEDpDrHv4ibs=
X-Google-Smtp-Source: ABdhPJx+b++CTFGgu+DFeLki7jxBL/LiTd5vQWsCksfZ1UfV7tIcd25Xpk1GVOGWDoUkoNLU4f5wCA==
X-Received: by 2002:a67:e017:: with SMTP id c23mr4624825vsl.23.1619197892645;
        Fri, 23 Apr 2021 10:11:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f301:: with SMTP id p1ls1676275vsf.10.gmail; Fri, 23 Apr
 2021 10:11:32 -0700 (PDT)
X-Received: by 2002:a67:cb0c:: with SMTP id b12mr4639831vsl.16.1619197891439;
        Fri, 23 Apr 2021 10:11:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619197891; cv=none;
        d=google.com; s=arc-20160816;
        b=OQH720AGvsj32ZtB0F5CCfMAA/tmm7D7ZUb5VmF7YPWfxVOp83SympHfGcwJpVKJV1
         v1jB0Sy90qQ9B4LAzKe4ae4jyelAOis7/KJmkb1xC9BzRRynrAqumvDMLO91tJaskGGV
         1wlYkAl29kAQrttw6eZS60E6oPTCPGbDQXZ4xwTUNqdx4uo5cmeSe07se6FH2NQb5eQm
         Gacv6vqPKeiNroOfH8kMvk/myCQu2PzOD4qA9sRuhs+3PCtT9sGyIPYneLbmgpevdCcq
         s2jVCJqoEPHQtc/Zc1htNShpxd1W8kkx5F8LioU91X1T3i2UuJBcRrca5d6z+nPNUzX9
         IB/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=gMyHYOlrSDZ8Z0kAY3T8aTGAumE4ATKorX+TrUIF1zQ=;
        b=ozjSvYn0jxgVmmHA5Yc3TJ/995i/Y1l8nKwJ79NWgo+RY1g1cZLZhXDTH3PR1PXT26
         PhtV39wrWfYce4Q5AVS8HgB5UXyLqO+5wLpsrsaZoyuksyyQET96d5rcFJAupHoOdeEL
         PtPhU2T/kZf4qcIYnFy/AU4gCpVSSukkhOhHYgLe9fXl3XrInKnsM62A3Eoui35IV9+N
         v0api9jrvfHlPu/iLDXeM0EdB5/DZ5Ah0HWS+cwBrtpPB8INH795jfBnZDZMABDwfEiv
         ipzzUmcfyV8SjWYxufbbySy+IMQKsqBVWwyChslBiq//Hf50R/b30tFcafsJq621A4hS
         1aNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p12si1021480vsm.0.2021.04.23.10.11.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Apr 2021 10:11:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 99F33608FE;
	Fri, 23 Apr 2021 17:11:28 +0000 (UTC)
From: Catalin Marinas <catalin.marinas@arm.com>
To: Nick Desaulniers <ndesaulniers@google.com>,
	Will Deacon <will@kernel.org>
Cc: clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	vincenzo.frascino@arm.com,
	Nathan Chancellor <nathan@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Stephen Boyd <swboyd@chromium.org>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3] arm64: vdso32: drop -no-integrated-as flag
Date: Fri, 23 Apr 2021 18:11:24 +0100
Message-Id: <161919777113.6013.4451539814173734627.b4-ty@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210420174427.230228-1-ndesaulniers@google.com>
References: <20210420174427.230228-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=cmarinas@kernel.org;       dmarc=fail (p=NONE
 sp=NONE dis=NONE) header.from=arm.com
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

On Tue, 20 Apr 2021 10:44:25 -0700, Nick Desaulniers wrote:
> Clang can assemble these files just fine; this is a relic from the top
> level Makefile conditionally adding this. We no longer need --prefix,
> --gcc-toolchain, or -Qunused-arguments flags either with this change, so
> remove those too.
> 
> To test building:
> $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
>   CROSS_COMPILE_COMPAT=arm-linux-gnueabi- make LLVM=1 LLVM_IAS=1 \
>   defconfig arch/arm64/kernel/vdso32/

Applied to arm64 (for-next/core), thanks!

[1/1] arm64: vdso32: drop -no-integrated-as flag
      https://git.kernel.org/arm64/c/ef94340583ee

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/161919777113.6013.4451539814173734627.b4-ty%40arm.com.
