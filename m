Return-Path: <clang-built-linux+bncBC47TRXEZUKBB5NH5DZQKGQEMIGY7SY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 10FC4191268
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 15:06:46 +0100 (CET)
Received: by mail-wr1-x43a.google.com with SMTP id d17sf9209167wrs.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 07:06:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585058805; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ig5SQReXOhH4BhNUBdgeXMZb7YoQYswdp0k+WTY1gAWbOJejU8kRaoRYRwGtbpPD8E
         vIJGVB4KsVI8vccSkPY4nLfMCyUdAS4nYvXiiZOEYcA1psfXLZVIYog4yZdSlVvMNwhu
         zAD4XNzdpcl9duzYFieFXLJPySjI7RJUADcedscTtp3g3hpHpSc571o8NIRiD8DTJn/Z
         U6+gTjSXZ+6qe8D4L/pOFnNBMZbPYBGKNYIxJt32EvpiZ7zaPz21YPEaXLYSDZfOYRU9
         SAqbWaVego3ogrSbby1wcs4vO0BxjV2NPkAtoGrQzgbwb/8r0VN7bj5rP7Xtbn9SkF9E
         6m4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:from:subject:references
         :mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=oD8ftv3wW27PoTfgLJ5KQytIwkicPDcpaFZ2y6aR1UU=;
        b=TCvAwppSLuQyP+Xefbdf7Gmi5IjOWt0sge9ms9/7oEZ0NU7A/eH/ZjGp0X1ewuSzbZ
         fX1GKQzCJhOv2SB9GL+VH1Os6RVIBr04+3Zj3KUKB1XeKM9QRkNdRDhU0sXl5oHlNZWw
         Ls1Y3C/HPXfZid2roAPN6rc2DvvsTd3Yz3uoT9YN1U1FXlujCMjq2A6Gm6B5OANJO2lb
         NSmtySEa9Gv4xaIK9wBtSCo2CSHw8yXTWt3l4tfW+p3KZJ+1Afu+CbLUkHNWz2wizZ0p
         tHVi080pmp8i8BQqgODHjVojYtXTk3F2p9f4Nq7+1/NvTD74Is2SOGMkG0mmfFwQdkhs
         hhzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nyDGk1Qh;
       spf=pass (google.com: domain of 39bn6xgckef0htzwgjylttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--courbet.bounces.google.com designates 2a00:1450:4864:20::449 as permitted sender) smtp.mailfrom=39BN6XgcKEf0htzwgjylttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--courbet.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oD8ftv3wW27PoTfgLJ5KQytIwkicPDcpaFZ2y6aR1UU=;
        b=KlXz9/KPBESoRVxY92xOgZPawUEzW4mtN6C/YiEGl2B8b0RUzrEHnYn3qxevy1cCKK
         JNa1z+biuMBeK6WUCp+9YrGI7w0C2Xsmh6Mkoyt0/hnjifL4gesBWWDzQUGfEM38kOqS
         y8ZWcjVyGdq9ZLJeEfWC3bdqrLdHW4qFgeFmCNUMcsbbtmQiNqqEQQ1BkzLchqKTr7Kk
         yBJWC0DWs9IDd1RCVDecHyI6cEqJeNsPecxrigTe5BnoanorL6F2C0dxieQmB2hcYJXv
         7Gt+CRbFRavNjue2hKfY1nbRx+UGVUe/SKkRxy6XTh9My+slkp5MvEjNs2NZbhCWTMjO
         wj8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oD8ftv3wW27PoTfgLJ5KQytIwkicPDcpaFZ2y6aR1UU=;
        b=KkDov4DehyL4penbY58CTq4ULoTNt/OfQM/AZPD/nLZVv43jVycDDEOXvfDtCojlDP
         7MXwZj9hd+a/9sc6uHYY15Jsl1in2C4AIEMe+H2fx0zkSsKRJ02M80gXJxuQcSIRwCKg
         kaBt4IoQZhea6+wvTv9YqRHa9aSKMtb7rfIae7vYo365+CvgkHli0DBTuj/25/VV6+q7
         hjJSJJGORvO/4wyks4dni2hiIpfOE3cG2XEkwq8K727ymzxGz5iw7cJI1wbwkgqVNapK
         y2mhM1FNL9oqD3YdBo0USlhL8O+WOjrQ7p8ZtLb/vBumulU0+W9bpHKlAWbI97QB6zfO
         CNJA==
X-Gm-Message-State: ANhLgQ3fI/7T05mhVoh9ksUR6KKMjF2liu48BowAAa0BGaVMkv/A5Sxg
	aWXARBwCKCsqlogPiU/zmWU=
X-Google-Smtp-Source: ADFU+vtQCb4ucICu6Zkgm+t6euFWTAe3ULHzxQsAgkR3HfNESF+zlASIcVayogPb+PxPqlDaQiWZcQ==
X-Received: by 2002:a5d:5141:: with SMTP id u1mr9000067wrt.146.1585058805402;
        Tue, 24 Mar 2020 07:06:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:548b:: with SMTP id h11ls3840724wrv.9.gmail; Tue, 24 Mar
 2020 07:06:44 -0700 (PDT)
X-Received: by 2002:a5d:6992:: with SMTP id g18mr37515606wru.426.1585058804890;
        Tue, 24 Mar 2020 07:06:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585058804; cv=none;
        d=google.com; s=arc-20160816;
        b=jFtE8pl91pbfwV9xClmg4Wjhggo58Ekj6i2iwp4QDAdgoc+13M1XIRoSgNe+JiPzT1
         NhrKVXeHrTcrsDAy1C6C0LS2i1gw9NlesJATbX+5bewOLjumqoJuq4FHw8bfl4iArdcU
         srFkXUD05wz5CFyUpyqANT0xmawkN7ITa7FKS83aI2C1klEmZ6RtV7rOXHdeKHZQd/0U
         Cmi1I8Y7oqPIo2Msh1edpBVSwyuZdAmoHM9nUZJUKBiKT3vdUIRgG2P67GCF/6LXwm+t
         rj2qIlURUQ+4ZGDDo4uNWsNjLYwTqsZonLPb1q/qTafp/rkl9Ar3wIkT09J9yRzF7ozK
         ddsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:from:subject:references:mime-version:message-id:in-reply-to:date
         :dkim-signature;
        bh=HBdtxiA4456RzmVM1qUhdnGD6aL9Y+FSjlt2D4+kbQs=;
        b=EhZuioIgGbfnzYLkRWuLvnsJSrp+nYARKVaO28dTbSasO1a5jXIy4lYAJKw1pJRqH/
         r09pWlv6wIGIfSr7sHeAykEG4JW9EJF4NIswShSyGPIOPM3Dv5D2Ps2dgf4OC89cd7/6
         asPtx6632ZH4WHY9gNs+k9saiGNKYu8o/Ty/nEEv4VU39OFOl7uSm8JGx+C0c9Dp84p7
         6JF3bAKYeU6J3W+6Iln6l2fpM1oURhUHVjRaLT1JNQvGBcqjiJ5j4VtDMbQauBTZ9rrE
         XpF98kvzsEeRn0sg0hWpeT77QZcjJs8L+ogL9K8W0bSPVf9YrpTt63ZlBxEs1oS1IDf6
         TYXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nyDGk1Qh;
       spf=pass (google.com: domain of 39bn6xgckef0htzwgjylttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--courbet.bounces.google.com designates 2a00:1450:4864:20::449 as permitted sender) smtp.mailfrom=39BN6XgcKEf0htzwgjylttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--courbet.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x449.google.com (mail-wr1-x449.google.com. [2a00:1450:4864:20::449])
        by gmr-mx.google.com with ESMTPS id q197si198544wme.2.2020.03.24.07.06.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 07:06:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of 39bn6xgckef0htzwgjylttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--courbet.bounces.google.com designates 2a00:1450:4864:20::449 as permitted sender) client-ip=2a00:1450:4864:20::449;
Received: by mail-wr1-x449.google.com with SMTP id l17so8887460wro.3
        for <clang-built-linux@googlegroups.com>; Tue, 24 Mar 2020 07:06:44 -0700 (PDT)
X-Received: by 2002:a5d:4ac8:: with SMTP id y8mr36558140wrs.272.1585058804297;
 Tue, 24 Mar 2020 07:06:44 -0700 (PDT)
Date: Tue, 24 Mar 2020 15:06:38 +0100
In-Reply-To: <20200323114207.222412-1-courbet@google.com>
Message-Id: <20200324140639.70079-1-courbet@google.com>
Mime-Version: 1.0
References: <20200323114207.222412-1-courbet@google.com>
X-Mailer: git-send-email 2.25.1.696.g5e7596f4ac-goog
Subject: [PATCH]     x86: Alias memset to __builtin_memset.
From: "'Clement Courbet' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org, 
	Clement Courbet <courbet@google.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: courbet@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nyDGk1Qh;       spf=pass
 (google.com: domain of 39bn6xgckef0htzwgjylttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--courbet.bounces.google.com
 designates 2a00:1450:4864:20::449 as permitted sender) smtp.mailfrom=39BN6XgcKEf0htzwgjylttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--courbet.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Clement Courbet <courbet@google.com>
Reply-To: Clement Courbet <courbet@google.com>
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

Thanks for the comments. Answers below.

> This ifdef is unnecessary
> This needs to be within #ifndef CONFIG_FORTIFY_SOURCE

Thanks, fixed.

> shouldn't this just be done universally ?

It looks like every architecture does its own magic with memory
functions. I'm not very familiar with how the linux kernel is
organized, do you have a pointer for where this would go if enabled
globally ?

> Who's adding it for 64b?
> Any idea where it's coming from in your
> build? Maybe a local modification to be removed?

Actually this is from our local build configuration. Apparently this
is needed to build on some architectures that redefine common
symbols, but the authors seemed to feel strongly that this should be
on for all architectures. I've reached out to the authors for an
extended rationale.
On the other hand I think that there is no reason to prevent people
from building with freestanding if we can easily allow them to.



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324140639.70079-1-courbet%40google.com.
