Return-Path: <clang-built-linux+bncBDYJPJO25UGBBP7XVT4QKGQESLO4CVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id A832C23D41A
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 Aug 2020 01:07:44 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id a17sf12708865ilb.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 Aug 2020 16:07:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596668863; cv=pass;
        d=google.com; s=arc-20160816;
        b=BCasGaxjVh1vnedsYacxyuwGIHXw2WpKddUetHq8TSr8ZIV1TzikcZgHa6YN261xOJ
         ePjFragWLl+Fb3Tgo+cRalmc+kb+4HatNv1kxKGkQMXBrm00b7gP6Pxgs/SM2m9D+ovk
         Dl/HvqaAwTBiIN2xsgWvzHy6ABtFTLIRIqpyul80vzrlg5NKRwN2mMqSkL9fJ9Dmt2S7
         OmrU8oVvmux5pyN4Zfi4CCnGHhCnyos7zd3Dq0FC+sZYZpwkCwCgckT7A/4Xd6psiJ1m
         RUSFvFH8rWSbb7WGX8wftO7GBbLVmpYUPpWGmuNzVjkz/rI2T5poJfgBHtkTZCcXPsoZ
         VGRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:dkim-signature;
        bh=WOrWEykbCA94ExW38V1OCqTLl5aAghyyDiGoHEarBk8=;
        b=ynzrhVK8/JY/gUwOZ0KR5IV3WvVekeLBsMICw2QHZy5QvH3ntN++x5qxMWnRbejaUo
         CIqesAITr63lpGI5DcZpjuGoMW+ErVbqHkeehrES/wuiUNIKdsNSYD1qwmXIvb10Yn+a
         2lltI1Jv1Aar5tWjJwAXEBuXa6siLEyFnDt3phzJNhti2hQd+BkjuxE2PxvJ0Yrvkb+i
         hTrkmqeEgCloiafuPyt1IMQyzzXVqqLTxJL4ZlDXh+0hqeJ9tswJqsFKvwEoWRdPvUfs
         NAJnfwcR90kb3PoT9pSEwpxXMJYmIhxV3RCnUU/JHPTuORFQIicTYfdPnBgzzgrtbPC2
         /FWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CozBAos5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=WOrWEykbCA94ExW38V1OCqTLl5aAghyyDiGoHEarBk8=;
        b=JNukX5D6lOcivD5hSnGhkXA6Eg/k+AasbEcSu9Qu5Sl67yKnHOySqiggG/WQ/uc1i6
         U/qRjFbLzyug49Bcr4IGlkq0Vgqq/QGE+dYR3qLx/+N2Sp7Y6FlJaXg/E23vKrOhkxep
         8kAv9nVdkISL6noYKmug4gF3QI+TyIaNW27dhSr5xNfgi7Ht6HVVDnvjg+1udOCDZK5+
         EcDcOUNzOHkU+jnoR9jlD+S4tKgH+CVEiNOMs+xDWbVxYYlr6GAxaXueBFSulbpolfpi
         t65M9TY3VOzeang44ELqPEWpfZNu8uENyWAn0jRiWczEPcxkOTyGU0i1fnofENXbC58u
         amRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WOrWEykbCA94ExW38V1OCqTLl5aAghyyDiGoHEarBk8=;
        b=iZNiO9Jwgl0YDw1GOvQ7JYUQ66PdaDuqZhTgcu3LjcH3brJ14S5FWBRRQH9zPKaecK
         lVk/klnp6eWavxIW5x/NkZYx98SxBaZ+iUX/cro3clSCOcfI6A9m6blc0WAmjKp7efrx
         th0Q6/e1hkC32SPmAUt7hSEaPFh/zgvoX9T5VUcLaC513KIW40sK09BwM/cjDxsPL33/
         P+CGOAAZqlZx1gWC9SftWFMul1ZWZTIz2w4dJdt+qDASHjqMz/VwEI0ODn39/Ly96hRa
         qwjRfjy7iKu8+Yz7BasSSPJlMlAOJ3nreszeqBxNQZybPBeD1xE4LIclz8T047+++6yp
         dGKg==
X-Gm-Message-State: AOAM532gHeMJFdlriCdUYZzsoYKx2Uj3ud/NOyIIKrt5wW2VIoXEQWPY
	7AUOgvw/t2McLwlStYWDksM=
X-Google-Smtp-Source: ABdhPJwBq3HEDzqRBA08bIuzYJrcPdpzKbrRI/n/svb3J9qPFUKE6BWrMweEQonkIJkQxhf4YVA3vg==
X-Received: by 2002:a02:95ae:: with SMTP id b43mr4070988jai.19.1596668863138;
        Wed, 05 Aug 2020 16:07:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9953:: with SMTP id v19ls693693ios.11.gmail; Wed, 05 Aug
 2020 16:07:42 -0700 (PDT)
X-Received: by 2002:a5e:dd44:: with SMTP id u4mr5917121iop.192.1596668862768;
        Wed, 05 Aug 2020 16:07:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596668862; cv=none;
        d=google.com; s=arc-20160816;
        b=n37ERE47dJJlF+csDTHJOH6Eov/2Wwf7x86Y8NKNr74BFAx16++WubQamy5oduZAXs
         BXHiIN6yiW7YNm38rReIn2CwnrD3slmv5xcV+WJiTyQIZO3JOjSPKYtVFwB/Ghu4Q0V8
         aM4E8y2/hhSW1eg9o3MrsFDnhRHoprSC2YeJqg1zyCcKlD6S76lmM8hHi84XeKPazKpw
         4Ejj0KEYqICgnq+aiEBI1k3xDcsP0c6rBNmyJBwLIn8m3IkDzujHQS1vSkhWCsQIfyXE
         yJVB9E1mi4rFStLvgX9U4ysHcn8fPlWW+rfb2bSNSpPzpHXSwzRI7hrstHAGyy62oGDN
         kOjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=mSrQoFMxOjl0yn2ZjlaKgQhzqfToHimKBspOzVqzatA=;
        b=J6Z+F/0uu9FP1Vz77Hv2PupzTUj22D3txm49aF6SZL6hphXa//k1ZLx5nIMklOxNNl
         XB+K1HeSIstGgFHB2veCxLiJGz511U/YkMieORFrqgX1YEPDLQ0TWudqfN6IOuXMgNgl
         DdZuYPW1BdBEO60PpjNjjj6z3rWJMtGSFhIVA1KY3V6RaJavfEzDg8HnfOjCjwM2qKH1
         Ln/rjMhRJUIJNLtbWnbDgFkduweLahZBnr9cicdQHWlSyWH0slE/jULiCKrwyVhQH0Ol
         gKii9RzoLz33WJXYNq4bLMPJ1DKRbF9L881wNvfILvVDQASFyVESyQpi4GncerJXpbxA
         Q1/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CozBAos5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com. [2607:f8b0:4864:20::102e])
        by gmr-mx.google.com with ESMTPS id z6si202208ioj.0.2020.08.05.16.07.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Aug 2020 16:07:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102e as permitted sender) client-ip=2607:f8b0:4864:20::102e;
Received: by mail-pj1-x102e.google.com with SMTP id 2so5622210pjx.5
        for <clang-built-linux@googlegroups.com>; Wed, 05 Aug 2020 16:07:42 -0700 (PDT)
X-Received: by 2002:a17:90a:3ad1:: with SMTP id b75mr5152826pjc.25.1596668861930;
 Wed, 05 Aug 2020 16:07:41 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 5 Aug 2020 16:07:29 -0700
Message-ID: <CAKwvOdkqB=shsVhPJx-iiLR14DLkmbk8GmMGgmwmdS9YMGgvWw@mail.gmail.com>
Subject: light reading
To: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CozBAos5;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102e
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

Found this while searching for another email thread a colleague asked
me about, maybe a fun read for a rainy day:
https://yarchive.net/comp/linux/gcc_vs_kernel_stability.html

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkqB%3DshsVhPJx-iiLR14DLkmbk8GmMGgmwmdS9YMGgvWw%40mail.gmail.com.
