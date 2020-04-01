Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGFOST2AKGQE6LGJJCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 480E519B878
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Apr 2020 00:35:05 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id f71sf1371153oib.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Apr 2020 15:35:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585780504; cv=pass;
        d=google.com; s=arc-20160816;
        b=0wkKHZ4LaSfdvlvR6EdfnsOEo6mmQaMcGOn/z0gVvXFDOOyHTNVGwV5E++CPkSoO6A
         1/jVnCQ+SlBQxA8Yw7TuWZQOW0tMGORQyZBHgHXwl7MqXMWyrx+TQadRbHsgOWQ0RcTL
         CkuJsLfFpAF9WHP0iyFLOONqw0IfjwRPYNzpQmshqw9nNLRwNuDM/lFM0dllry1ynqTm
         RUJzr/sa4n4gxMMEBNS4g1oUXZJ1r9tSaHv09Ko3j4OeYvdKLWrGvP3r21tom74xc5NF
         vVflQTGhTxXoE6ewgUMsCCarnplu9R7DeF23y4zM0u2Tfj3xVobzbpARrhnQ7DB23sCY
         MnPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=sigNvXS+tdsWCnaIWbiaUUwBTLC2pyTMtiXhTbXaoQU=;
        b=XxkOUOywuu6UJnzX8b7SkU4slpUOFVm4BaIOLECoiugy2tnH6QiHJGcHWtMwJNoJQN
         zOrd7zVPf3RId6YER4zq6+gznONbIUB50sCejFTrzdpePvwVzymxpvDWN6hn23Ymo1Yd
         W1EBqdjukjIBls+oExRFsaCE5Umxa4cDN3TLCWfpDVLivLFf6jaSRD6bt+v/qA/+O8sy
         RwMSxBQ3LiW1kHUDK+mDIZ3Q4TWM6gfqTG9I9frJj9H1TAYaW7PZ/fb3spJSJunj3MZ+
         tLbcjzydUtRtBJc0LBu0JTP472CZyEoaLaKd69gOb0i8GLGWzBxgp/boQ/i7ZWmW+5xQ
         vxtw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lNqO4gQE;
       spf=pass (google.com: domain of 3fxefxgwkafq9z0ewg7940de2aa270.ya8@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::a49 as permitted sender) smtp.mailfrom=3FxeFXgwKAFQ9z0EwG7940DE2AA270.yA8@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sigNvXS+tdsWCnaIWbiaUUwBTLC2pyTMtiXhTbXaoQU=;
        b=B7lljuK475Cgggqjewwq3xSGHRqKmvdiBD7VmgLUpU5s/sQkeiZMUUTwvodo2DIj2i
         VYIhUaTDL6A2YDZxgAjCng+xvzVbgp6xuIxaxtqBm/1eGypKeb8royrUdzGH2F19hctd
         w9ZXq5CAJuCsVLwXsM4ZDbxPAQrkCgFm3weITelRpNtWnJjC5yr7IFsFrYCvDxCTlHk6
         D95gl0e01KNJM5xr1rOUDT4FNFiUQ2myLTnssONITFo8PXYLt8PSsUVDI+/U4EkzoQXr
         KkL9zuiiehmPX+lHfwI6Lfo5UxlowBcRc22RiNbKqJi5IzmyeXoS3fPwijh3zvEVpS3y
         bvog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sigNvXS+tdsWCnaIWbiaUUwBTLC2pyTMtiXhTbXaoQU=;
        b=ME2Lu9CewpzKlMA0Zj8ftSzb3CWv2gsBBFwJbaQ5iYP2hEGP3wrqVj9FF8iMi6xH+n
         5BB2zxUoJ19gMN5mlw73O29hTIzPRn72KmyGyiE0M8N0cn8AgYHELIOYD77ZJ9Ou9GqC
         LITkRkQyXTZrlId9nKtaXlivIXFbqoSpz7a6XbQb1I1ntSLlmDt7QX2iZ2DM2qfMPYC6
         +zOD5Mqk/n7CwfPycLGeLUQWs52Gjklywy+Ek8Hry79plCPAr8RQNgWXHoMe56SZFOaN
         J9FGr+kCQqbrr9hKFAjvCAQsjI7vKY5LPK6LwWTA68Z0wHkfrSHo4Oh6HYYEeI5HEXik
         O/ew==
X-Gm-Message-State: AGi0PuYVlEgdUCwBbqMqV7hBUufkAGoXGYeXJ1JIr/DeiPKeN6XRj0dF
	bMF0chseaOIrdV9e84IUzJo=
X-Google-Smtp-Source: APiQypLxHDwSc7VOUKuC1cPRXOpTZZ8pEydLVhyIEjJf+aKQm/Fstf4ezCofipsWbaQr26BF/C383w==
X-Received: by 2002:aca:f183:: with SMTP id p125mr196012oih.74.1585780504201;
        Wed, 01 Apr 2020 15:35:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:508d:: with SMTP id e135ls693201oib.5.gmail; Wed, 01 Apr
 2020 15:35:03 -0700 (PDT)
X-Received: by 2002:aca:f288:: with SMTP id q130mr175018oih.33.1585780503828;
        Wed, 01 Apr 2020 15:35:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585780503; cv=none;
        d=google.com; s=arc-20160816;
        b=XD6IHR0py70zpFXr/Z/Kkd8Dp0QBT4iHk6aWtSmpyDTj+JsI2FZmWrKpjp9NGmMhCU
         DR/62Oy/49E5NQXlSUfY8MhgjSe7ULeUsWB9LAW749o9Hjcg2Hiw6Ki+tmGezjV1dfD+
         35MKjLxVXFXK3TrqhzCgpc8BZnej5NL0aTYzNnD4mQ1faSxJW1G8K7rnz0Hk9v28Liqi
         PgJ/DyXaD8PuHN2hejoz1U1EgmUCof+gmXy2lL6nAInlaTL+lFvplcdhj7G+P5C68JG2
         5x/kRFyliF6vNHkCgIi/bJtsdnBY2kKo2JAP7S+9ku90nIAKzXp3ifi/jEidNhKDHQJg
         adgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=9KR01r6gih4jhYYFHW4WFEV8YGH4JU+wPB7AaAwETRc=;
        b=VBtEzxn/VSO67Jc9jYrSK1Te//tlCGViIa2IoeaQ8ec2nuCcH3EX7epimflu0ZUmLz
         42GA41IE720W1wIwz5B9Uwo/7EIKSpRr+CYYBJ8AFhCtd8dF3T/dheBQW2ZVh50LrKcS
         KhLAdowPEijGbbEdUa0DLRVkFNh717goDC56OvLKZjT2BMBmY5VjvZFQXk+szU+c5bvD
         Q+ssQ3uhx2Mx56Cs74RY18ljlU2msVOyzPZkGq1znHo0N8ajDcL+D/8F2qPFIXEgWFA9
         ZNVOkZZN/Zw/ye2VOZmgqmZ4bqQMLCJfy/smDpkc7sfOd+kZuMK/ZLVLPgd3UKNZG827
         aSMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lNqO4gQE;
       spf=pass (google.com: domain of 3fxefxgwkafq9z0ewg7940de2aa270.ya8@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::a49 as permitted sender) smtp.mailfrom=3FxeFXgwKAFQ9z0EwG7940DE2AA270.yA8@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa49.google.com (mail-vk1-xa49.google.com. [2607:f8b0:4864:20::a49])
        by gmr-mx.google.com with ESMTPS id a63si228014oib.4.2020.04.01.15.35.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Apr 2020 15:35:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3fxefxgwkafq9z0ewg7940de2aa270.ya8@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::a49 as permitted sender) client-ip=2607:f8b0:4864:20::a49;
Received: by mail-vk1-xa49.google.com with SMTP id e186so532719vkh.23
        for <clang-built-linux@googlegroups.com>; Wed, 01 Apr 2020 15:35:03 -0700 (PDT)
X-Received: by 2002:ac5:cce8:: with SMTP id k8mr148063vkn.5.1585780503181;
 Wed, 01 Apr 2020 15:35:03 -0700 (PDT)
Date: Wed,  1 Apr 2020 15:35:00 -0700
In-Reply-To: <20200401.113627.1377328159361906184.davem@davemloft.net>
Message-Id: <20200401223500.224253-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200401.113627.1377328159361906184.davem@davemloft.net>
X-Mailer: git-send-email 2.26.0.rc2.310.g2932bb562d-goog
Subject: Re: [PATCH net-next v6 00/11] net: ethernet: ti: add networking
 support for k3 am65x/j721e soc
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: davem@davemloft.net
Cc: arnd@arndb.de, devicetree@vger.kernel.org, grygorii.strashko@ti.com, 
	kishon@ti.com, kuba@kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, m-karicheri2@ti.com, netdev@vger.kernel.org, 
	nsekhar@ti.com, olof@lixom.net, olteanv@gmail.com, peter.ujfalusi@ti.com, 
	robh@kernel.org, rogerq@ti.com, t-kristo@ti.com, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lNqO4gQE;       spf=pass
 (google.com: domain of 3fxefxgwkafq9z0ewg7940de2aa270.ya8@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::a49 as permitted sender) smtp.mailfrom=3FxeFXgwKAFQ9z0EwG7940DE2AA270.yA8@flex--ndesaulniers.bounces.google.com;
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

>> I think the ARM64 build is now also broken on Linus' master branch,
>> after the net-next merge? I am not quite sure if the device tree
>> patches were supposed to land in mainline the way they did.
>
>There's a fix in my net tree and it will go to Linus soon.
>
>There is no clear policy for dt change integration, and honestly
>I try to deal with the situation on a case by case basis.

Yep, mainline aarch64-linux-gnu- builds are totally hosed.  DTC fails the build
very early on:
https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/311246218
https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/311246270
There was no failure in -next, not sure how we skipped our canary in the coal
mine.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200401223500.224253-1-ndesaulniers%40google.com.
