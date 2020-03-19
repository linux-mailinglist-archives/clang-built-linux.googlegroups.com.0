Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7FPZ7ZQKGQEKMYK2RI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 36AAA18C185
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 21:37:18 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id x6sf2360311plo.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 13:37:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584650237; cv=pass;
        d=google.com; s=arc-20160816;
        b=GDBmtfuUGkYitsYPTiIXKkK5SAQjTupi4pElj0cEvF1Ra4WOf2b37zCMf3lcwonN7C
         F4WYJBBGJIpAqzdInwF2s/DQHW1CKO7HepcDVhBa4CkgSA+JRvebFmTWxiFMcVx20t7y
         iy1vFeo3GkEQlsnnxrjmLHxaZcSWnKCoKOFUCJlStVza7fFwES4RVvDSZjMfPS/cBS7v
         9sCj96JSN+qlEWfdfVv0shbRAgALLTKKGbRUve9LX8xoSl2QRxPRqF+ZWpchWfQMOGw3
         cgsQ+cVQHro4qaLtROYejLlfnR4AbdyVfaRXlNYkU9spp4lCu4zg8UwfdpQobJYXzsdv
         j3iA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=FMPPbm2ihVbfnED0McbYLAZPAqYeIAtNrI0cfSQjff8=;
        b=vIEH1HkuKl/e8qZ4TjbZKP4hyM5ekNxWJT+bcd8UR10zePhO+AtvbTSZUBRxCnv1lj
         2SOqwZp7VO1IddImR2UXp/z8oiWc1afMwcRR0zhBUSKVgROpnGY2x1RfjnEFJ3atd55Y
         /NJEnW2rZu8N3yRc8SsB7Z8fDPOZ+CMvgwzMJwGUuC37QdhQrYgwhmuTfX6VGGtFMAGt
         GkiWJ6act7Ot6Rh6kkiV2cQxI61tUtNqFITXvhTqu8Rri6tIZUBlP14+fdXGRbcYGNd7
         S0WmRG6llDp4+jH77BURj/WvSOrqCO1iFWdpmajuwzQyF7R3blW1psxJis3UT+81EJO9
         2MzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RHCmhJ4n;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=FMPPbm2ihVbfnED0McbYLAZPAqYeIAtNrI0cfSQjff8=;
        b=l+9ekdjg5H7P62FZv8biJRk37PQWoc7GQPUlwIzB/P1ySVrwiQbSj8+BMOjiWxcG8i
         L6XcCugDUyyIrUFnz4+JlfSQ+BMNpvJokcEsuHcekrvyhDZrdyjn0sCVO3oRmdPDS7Fe
         QlrObsIi7GqhnAOaIr9Ltlny0+T8v8rMHGVT147R+p8w38Hpbb1E1Jz9JixqWOqNLJpo
         MO6NXwQsvR8xE3RhQ7wOOB+hnd/qhHXJIopr6Y8YSwbgKaYF/1JCr5o7BzETlj5WdDPX
         Sl+kIhslG1tFmd9r/JgdpWY+Ehz/LvaAfqezlLTX9xCQJ6vXYJdFAcB+/CI7KN1zOi5g
         n2fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FMPPbm2ihVbfnED0McbYLAZPAqYeIAtNrI0cfSQjff8=;
        b=LB1MLQlbHodHg4mPiCKTSO1HVsgGxyf8nWMTXlQzvon6Z5X1ZGXCFmXhjKqy8jWODN
         pzRGoMxxnJyeyEm8fXuL7ztFmTPzhF9CtsKr4KqJ8NEDZ7dv1qSfJfbFHe5aGtlST3PN
         r3gKVtyrzfPUOQIGrSBdsyMLLRjXWFiS39Ts+PoHeA7oiGSLdoYGPLuP+y1i+pcD3Mvg
         3K7kEwL8eiQ0rWLjIPESMGPd3YAQ5ayXjj3pGdNZtxr7w05A8/sVfvzwAhZUGe68Zukg
         9a7CBMtKvkKggGpXoqRm14RsbbwK9jnGQVy5pjY6CM45DcVzZ7IfAQ08lgmv2gzmV+ck
         3A4g==
X-Gm-Message-State: ANhLgQ1RvvUq6878dRlAHrZAVSlvgziHp14nfo3cPocjtyzdDwiwtfp4
	t82//dgafEyokIUorwjLTt0=
X-Google-Smtp-Source: ADFU+vvRnRh14NmliLslNnc658078Xa/twiJ/aZc8FXZc0wwETDvzUTlKqeYSucvFxK6SV4CVCFyqA==
X-Received: by 2002:a17:90a:d156:: with SMTP id t22mr5608134pjw.138.1584650236885;
        Thu, 19 Mar 2020 13:37:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:684:: with SMTP id 126ls2018034pgg.9.gmail; Thu, 19 Mar
 2020 13:37:16 -0700 (PDT)
X-Received: by 2002:a63:b34d:: with SMTP id x13mr5184506pgt.317.1584650236427;
        Thu, 19 Mar 2020 13:37:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584650236; cv=none;
        d=google.com; s=arc-20160816;
        b=r6O99mOUe8TWSbgGCsIpvIwZyejmVqmjK5rJjzDoXS7DfdmW7nVnkYHI5titTGKEsz
         NZg0MkXJ+lz38TbzkWC5sLNZgvdYTGoaJNMRgkCaFkikxEk1XyGrE3Otnt+k0+dIdCd4
         Kr52ykLFHqZ9i2eS9B5V2BXHs7X+PoXSgk0vqj7hiygGj98H+6IAXu1xBUkOQRjmwD9z
         Gck52Q6OY3Q3fPPFtzrZMljOqiEXnCugXmIW0MxfYLq9PPfq4P6hfTUqnExEdTaABENT
         QDNczFhVMZ+sXux7dypp8JoLPO0XsQhK7Kq0Nyd0okuoyJSDaRgX1W80G8xCP1YJIxZW
         NYJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=V2dHlsylmcX+8vKv5Pjp+qF8XAmgIyui3eqX6hf1HaI=;
        b=YT2EOwR33W4mbGlOnN1B5wndgIlh1tiJTF4l8I7XKCOPvI+FOzGuVt1orPd0pD2q3F
         FJXpSgzY6XrYAcwVGTPG+6XSAU5VyF+7O2qc73c/Zxq/LCt2+nqD6KzSKeYSmK8V8mAP
         KF3NX16a24tAMFqquyZberxXyGLwymwJybNgIGqKvpghKD5xOYsIXlwOLDoJkMoak9OC
         yzIFuAoyuvAZgxbYto/eaTgXrSsRKhrOvEWfLfrFpBO/tvuYn6XE3b/qa3pcNDFd+sS0
         WhSWg5Ysob0GOWdl3yWoL2+Bzp/1ypI9PKWBS2Uv+8niX+EBeLS1FeH3E6S8FUgt79p5
         4mNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RHCmhJ4n;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com. [2607:f8b0:4864:20::42f])
        by gmr-mx.google.com with ESMTPS id ml9si197429pjb.2.2020.03.19.13.37.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2020 13:37:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42f as permitted sender) client-ip=2607:f8b0:4864:20::42f;
Received: by mail-pf1-x42f.google.com with SMTP id c19so2027916pfo.13
        for <clang-built-linux@googlegroups.com>; Thu, 19 Mar 2020 13:37:16 -0700 (PDT)
X-Received: by 2002:a63:4d6:: with SMTP id 205mr5085665pge.10.1584650235535;
 Thu, 19 Mar 2020 13:37:15 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 19 Mar 2020 13:37:04 -0700
Message-ID: <CAKwvOd=mOmU1S1g5oDDy3rLjnp543Fu6PSVAJyvxhyQDvpOM+A@mail.gmail.com>
Subject: call to memset() with UACCESS enabled
To: Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=RHCmhJ4n;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42f
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

Hello Josh and Peter,
I'm looking to track down what I think is our last objtool warning:
https://github.com/ClangBuiltLinux/linux/issues/876

Can you tell me a little bit more about what uaccess is?  I wonder if
an assignment is getting turned into a memset outside of a "critical
section" (for some meaning of "critical section" that I don't yet
understand), which is what objtool is validating against?

I didn't see any pointers for this warning in
tools/objtool/Documentation/stack-validation.txt (the tips on how to
proceed given an observed warning is a great technique!)
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DmOmU1S1g5oDDy3rLjnp543Fu6PSVAJyvxhyQDvpOM%2BA%40mail.gmail.com.
