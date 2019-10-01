Return-Path: <clang-built-linux+bncBDYJPJO25UGBBEEQZ3WAKGQEVDXTEBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D43C3E2A
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Oct 2019 19:08:33 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id l10sf1554477ybp.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Oct 2019 10:08:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569949712; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZNmVrJYSqEXp9HV8TYDFfjUGdTvT434U3FsKdEKtrJix3gtlfs00pCSEZbBKBrWwHc
         s4mUtC+kblJYDeymuQS3bRVO5BjbgNQ1S20VhIH2vruopRCTvsSOgZ7yRhxM7Ysajpzz
         OL1BNn3khESz5uX/keqQuya0hQ4vSdlKl4YvsdrtgsuvZ2y6msgrkiyhEFn9jeAOckaQ
         ugPWfdKECV4u2JVPNFW1RZPjvIu4NAegcTyc6YlxoL1tpqLiP8BBTqS7RWhd/8aRl+Ab
         K5p4EVrbm4JvQlRUoz2PjeeE229FEGqhLSvnRt30GW3OpNIdptwgswSwsOl1NoysIgSP
         05Uw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=ZO/VKOI5WFzdgT1TSqtFYSVEKmJPgKOPaa45Ls2id5A=;
        b=VKMZa9J+Ja2wopkLJKc9lRWsa+bkcroaUv41d4ZHVfBBJOhIHMZgsDMvLLYPgojxZL
         hhvxbRdrv7s7PX5fr7Y0zk8g1qfHPh1H847eggljA5fkOHLgzjs8bwUSK3HR2/9/j3be
         E/tIkc5vHpgaRbN0r8qmsEJlU0c2eztX5/xbNCdzvtG8AQiHVfTnYMg0t0kQ9dLpzD41
         YOJHFyfZ+H+jtHi5zrbTRl/xYO4HgQY0PgH5Jos1DioHZaRa9gHpHElJaXvy1gWR0VUH
         ks+BXfSM57ESY7RuqbWM6/BnKMfzRHNcIHhlVLw7e9po4pRXvhejZGSdvNFQj+qOugn2
         6k8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="h/VDifvI";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ZO/VKOI5WFzdgT1TSqtFYSVEKmJPgKOPaa45Ls2id5A=;
        b=ob+wpJsF+WBCLls8fgCODMIykauosUZhQzvXpHLOdrSDj22hli1HPi9eamNpi1tCdU
         ZOhCzgO79JOkt26Z3UszXt2PGWrIi8PbA2wV94a5svZulqtZctY719epUKH3HSFtvvZH
         m1/13ZXGjy03XVMQj8mKE5ZA/ZdeSVom0gyOL2qta3sTZ2OiU07pJFQPdBS5dfp7PTYn
         c8yXDjdQJ3Yajt6K0TU/aKfSzoPR79KV4hv9rKpgQ3Z3FJAHqPJYdHB5uAcPDocaPRFq
         7h02fYCceTXOmLtW5A6QOFQs7TR0WO1U121kRUFJZ8HOuqQQLOn6glS2R0VZXzUfAPtB
         Zpqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZO/VKOI5WFzdgT1TSqtFYSVEKmJPgKOPaa45Ls2id5A=;
        b=D9iT95yKN86D3B1wDGCkrS/ZRA+Y2Q+QCFGI8O/yaAv/DWFJ1qrotLZw/ooDijzXyx
         SYvXOyESh9n6p+ATIHO2wDukAt9Rk37lcoE7w1zkJ6HseqABqV3y5ltGO/X0XUTBkeRo
         8Fu6uetLaIbR3aWwV7b7EEIPpeCNyUkaquwf8pZ7QGEHmb6arbAvl8WtXRSH8KFnZD05
         LsooMn5bsZslDXvC5Zr245xyGjFvoacF15Uk94BmQ0FizDT1w20qJgNzXY8/uiWbGm6/
         iJRLcYU2sPnkafsIAqCrAzOVAJbX4JerOFV8Jfs8KMZrfXANWdBQZb07D22HCos3dnEb
         NthA==
X-Gm-Message-State: APjAAAWjKrcywd13CLTsJugFSMmbosD7LgC+14lLVKu59bEIchVmMqLp
	UTyexkE3TgZkjAnI9B9bl04=
X-Google-Smtp-Source: APXvYqzk81fhJP88I9Jb6L1zfZ5xOBhHQpfWDVzyV1A5/3GhH9o5qDQ6pGp+lL3UwuSDvA1MLKTqLg==
X-Received: by 2002:a25:cf0a:: with SMTP id f10mr18691367ybg.197.1569949712260;
        Tue, 01 Oct 2019 10:08:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:bcd0:: with SMTP id l16ls1147917ybm.7.gmail; Tue, 01 Oct
 2019 10:08:31 -0700 (PDT)
X-Received: by 2002:a5b:8c5:: with SMTP id w5mr20100466ybq.206.1569949711948;
        Tue, 01 Oct 2019 10:08:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569949711; cv=none;
        d=google.com; s=arc-20160816;
        b=QREpKKBaEGyexy5/fpvfQLAAfVA+5037ybmto/6qQLJlc6oKc7M9mYY00dxFexuYCO
         p68Pajc4Zq4jCApma6LTRFNgxDCt4IviYXtbiq5W5rMubPrdgKmAp7I4h99Cz/ZUTBcL
         B6uo37gjxq49uZDITo928/NwyqSYlhJDoyLnorOXCqnF9wOlP/2WTynoLrhcg3FUuzrA
         rqDpeHz/4W5f1A0KcMRRcyW7KtU5j+Rejll0VH+fVX5jsOEuKz0bliJ+fe2v25EFKYIR
         hMJnqrTrOJDxn0y3FBbcivYKjQHOdtrsOt5QIO4NQYgFY4xmaOAatYyfF8T1P1wWoTm4
         M5YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=obYVxX3fbUmf/25wOlUa6aa1sizObEdD6KJDqiOoDQQ=;
        b=m/yr+8vLNWlAxwIdhyj8NsWnDyNot37zYkR4XuXqYcum0JE92TKCrdndnxnI2HM7WK
         IhdkpOEyVKhpLhvaNdq7XocyONEioGR6y2dMoQUEWPk+8yp7/gjQGqzx4yaCgtYfziDG
         bxtRSEhEU+1RZBi0viqSt5IFVx5BpRSXcG+Oa1oogNIFL1b9bfByEqrnDfzpFDDymLZ0
         0eLX04FNYOcnLUA0ex9uhLyGoeS3xqMho4bSRDH4oQiYO6yCQ82Eo9dvcZixVlSo3M6U
         7l1R4GxaVXFtLWjMCaWc0cSE17YW5G86zzuQ1FuvqfJIAS4rr5/kSbm3R/ZXwFUO7C96
         sXpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="h/VDifvI";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com. [2607:f8b0:4864:20::432])
        by gmr-mx.google.com with ESMTPS id x188si689161ywg.0.2019.10.01.10.08.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Oct 2019 10:08:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::432 as permitted sender) client-ip=2607:f8b0:4864:20::432;
Received: by mail-pf1-x432.google.com with SMTP id y22so8464857pfr.3
        for <clang-built-linux@googlegroups.com>; Tue, 01 Oct 2019 10:08:31 -0700 (PDT)
X-Received: by 2002:a17:90a:ff18:: with SMTP id ce24mr6568742pjb.123.1569949710446;
 Tue, 01 Oct 2019 10:08:30 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 1 Oct 2019 10:08:19 -0700
Message-ID: <CAKwvOdnL3OnJaATo1H+FKcnVHDNHPAf3JQjrxJ7Oq4WS3fJqFQ@mail.gmail.com>
Subject: LowRISC RISCV ClangBuiltKernels
To: clang-built-linux <clang-built-linux@googlegroups.com>, 
	clang linux fellowship <clang-linux-fellowship@google.com>
Cc: asb@lowrisc.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="h/VDifvI";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::432
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

> As next steps, we expect to do some more in-depth testing of the compiled packages and to start building the Linux kernel with Clang.

via: https://www.lowrisc.org/blog/2019/07/large-scale-risc-v-llvm-testing-with-buildroot/
via: https://twitter.com/lowRISC/status/1149020494529736705
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnL3OnJaATo1H%2BFKcnVHDNHPAf3JQjrxJ7Oq4WS3fJqFQ%40mail.gmail.com.
