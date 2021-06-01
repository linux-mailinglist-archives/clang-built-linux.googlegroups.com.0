Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBQMP3KCQMGQEH52UM5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A86397A8E
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Jun 2021 21:17:22 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id l14-20020a633e0e0000b02902207c270cabsf20151pga.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Jun 2021 12:17:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622575041; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y016aEQlqip7muXd1VtzjoD1gfeow5/i41zSRr0TJMBS4PGQ0dy83G3hMLWqWnVRox
         ifL2oViPz+Y+2BAWePm2AWa7W8G6nbLS59wCcicE0DZAiuFEnQCP1nfaCEey74I7+dSI
         ULyIZc+433q0y5vv+RMtTAHm9j8POOSlgXDhcfl9v/wTx95EpnACfsPlM67+ma+EC2bj
         ZjJcYFOgEBJqEjwN0a9gqYJY69jYoMeQLUyGxnqrCyKiZ80IwrNSslpOchg5/POd/wzw
         ezQyWMuwwMNHDes9O6ghB1/TpS3i/dcp/Gi4foMNygyxEqSw2jz+mXHsGV586EpxisGj
         yCbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=+e8zdcCb9jD0GQVbEIxT2FpRg86erTgtjiMt55vpdQ4=;
        b=h2+Kr1heasMe0hFwB4ki77L4j9W86scTgGeBtQmpIz+SX1eMTul17PdYklet3mtmho
         nhUEphB15V3wj/LDX6issvUyZU/OulSK/vAddpnFm3oT39QcR69kbJKIjhq3pJsaQt1O
         mFi19PqoaPjRWcCQX+cZgJsKq1XWtBPfvkZR5yj2XlGm/ukcV4V7nvaKxsmaPIsIGzrD
         yMin/q+Y0dGsFnj8WgAutr3rFFyqOCGl8NnI0H6PPPOf4K/c82uTg04yWgfXcY6p+HYb
         dTw3io+x2D6hieK31IukERJJ7UbHI+rcS3zURV4U5BZ1tFtlvrLXj44JtsKFQgSF05py
         E/Eg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="SqAi/ENx";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+e8zdcCb9jD0GQVbEIxT2FpRg86erTgtjiMt55vpdQ4=;
        b=lWLtcnECYX4qOguwPh7YhTxqDVM/zSuIoVSaaSNNJ8mMNGoBmOdyZUtsCM9b+pnrdx
         kXjJ2b/Syk4jrPJP3hyh5vySXyIhwipBcjPHcCuyqpMyMmSnMIvUXxEQYdNinbf+qJMR
         W3yZ0EIciYGU9HvuzjWfJiSZDTk7pjEAu0PlQvqf4ZNa+qO2cjSMl2ECP88/yToXTCIv
         BkskD8ERPTOgxgMYKA6Qbx+CRTgYyhjFM395PuPZ3DR305ylb8TIlysET/iGi27wa874
         y7oVhhhQazfl786GufaGaNF96Hlp0cCXRZqKP8TiHUN5bSx5A68MZZtRj/+GktRKuh5v
         taRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+e8zdcCb9jD0GQVbEIxT2FpRg86erTgtjiMt55vpdQ4=;
        b=QufRNEuUnfiqAbPuHTz3aZXbPIbDifKigieefeeEH/zhzVherLYobkAxInw062lXse
         EKX7CefrM+vmkPuaNV0a0odUZbY9HKIUmV/xxgvvxNs4MxLco0sOUIR84sKzHuX/4qYY
         x7c3LuAmuWC5iwdgFZxDUC8bnGara8tMKxvIDqByYfrcHL2TtB+YQ/w2/CXqJ6UGGrTj
         XGHNnCzzsNPNbq/aB6UK0Jm/4h+I98l3C5KYmCDPnBTaPTGG/KYNQiFcOD2OIeQ633zw
         q+BpHtCIx8ecMcRs6av7qEHfizQHNO9zT4IY8i7Vxk2lv+F1mSpjlbqujRfYorNle/BS
         FXfQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530RC67wrWUfHOFgHfx3MycEsnuZ8dO4vLep+h3LrojGmUh1paeJ
	RVLLmUFRD5FF/udgtTMpw14=
X-Google-Smtp-Source: ABdhPJzZKHaV2KG75kgbu2RHcreUkH+gjYC4dljZX109+twrArIF+sJSR8mcqNZrqjLgssCwC+vQMw==
X-Received: by 2002:a17:90b:3e89:: with SMTP id rj9mr14716215pjb.114.1622575041655;
        Tue, 01 Jun 2021 12:17:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:31d7:: with SMTP id v23ls8038964ple.9.gmail; Tue, 01
 Jun 2021 12:17:21 -0700 (PDT)
X-Received: by 2002:a17:903:1c3:b029:f1:ecf4:f971 with SMTP id e3-20020a17090301c3b02900f1ecf4f971mr27523946plh.6.1622575041135;
        Tue, 01 Jun 2021 12:17:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622575041; cv=none;
        d=google.com; s=arc-20160816;
        b=vKoD2bmuQWxDw3sAOcEkIC7JqLUa7lbd6SRDYDDb4L9Fhb45QWwU3beAPQ2QLiuEck
         1g6V5l2xkPEesUxy1CZitzvSYU8wVXm2J5mplFHFENjS3V+vhl7ORpsI53+m9/4tYaNp
         WUFhIy2+9HG1oX8krZw2CeKtqYcOUFfkdeo6+8yIEnjgFUM/LbuQKgParpo3raaLl9dR
         q1xSUl1zg11ZHNxHrJR6W61t5Nv+s/i/04N5PQwblYftBeKuVtST5oCyhW+gIevEfkay
         PjFpMN2aw+9FXFWMkILI9i/aQ/Vy+CgKXeaLUEM5DLYQbvEOTF0eBjXnpT87vEDubO/k
         +dpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=PUUyD7O6JCMKmduUrqE7eyPTkSebjyeJhHYra7PUdnQ=;
        b=YDjSc/qg8H568QT8bd70zmnCaQt0ZMCOiNTAfWrpWW+1S2ELPvB6yWug6daspKDjX6
         s7Gf2mYQSItzxsTlYvK+kwkDYWEBm9IRlxbJwFOGlR7buncLKWQESf/DvnITDk1aaEL9
         elYe1UXMfYBetGif1B925JA15xhoDuE0ihOleCokOL/e+9+2Pu/txluked9TYl8a6ElV
         43vVISDyNqyWKxJbxBVcG1LaRFQrfQUln8JcgoMlkB0gQpm9btjEXCq9zymk2QV7t0jA
         LGOFM0JREyLqu363TUXobvgL6ES8dbh1SRPf9W3oMvaIP138Y/sy4/s4z/ikUgk4IbTO
         66AA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="SqAi/ENx";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com. [2607:f8b0:4864:20::432])
        by gmr-mx.google.com with ESMTPS id o20si1298478pgv.1.2021.06.01.12.17.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jun 2021 12:17:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432 as permitted sender) client-ip=2607:f8b0:4864:20::432;
Received: by mail-pf1-x432.google.com with SMTP id y15so232115pfn.13
        for <clang-built-linux@googlegroups.com>; Tue, 01 Jun 2021 12:17:21 -0700 (PDT)
X-Received: by 2002:a05:6a00:87:b029:2ea:d79:1d4e with SMTP id c7-20020a056a000087b02902ea0d791d4emr2818989pfj.59.1622575040865;
        Tue, 01 Jun 2021 12:17:20 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y6sm7412037pjf.40.2021.06.01.12.17.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jun 2021 12:17:20 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Nathan Chancellor <nathan@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>
Cc: Kees Cook <keescook@chromium.org>,
	clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] MAINTAINERS: Add Clang CFI section
Date: Tue,  1 Jun 2021 12:17:14 -0700
Message-Id: <162257503133.1460666.16967231826334923768.b4-ty@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210531210629.864888-1-nathan@kernel.org>
References: <20210531205405.67993-1-nathan@kernel.org> <20210531210629.864888-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="SqAi/ENx";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Mon, 31 May 2021 14:06:30 -0700, Nathan Chancellor wrote:
> Sami is the primary developer and Kees has been chauffeuring the patches
> to Linus so ensure they are always kept in the loop about proposed
> changes to these files. Add Nick and I as reviewers so we are CC'd as
> well.

Applied to for-next/clang/features, thanks!

[1/1] MAINTAINERS: Add Clang CFI section
      https://git.kernel.org/kees/c/3a40617ce088

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/162257503133.1460666.16967231826334923768.b4-ty%40chromium.org.
