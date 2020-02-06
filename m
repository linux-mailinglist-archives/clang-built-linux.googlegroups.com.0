Return-Path: <clang-built-linux+bncBDYJPJO25UGBBK6C6LYQKGQEAG3K3PA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4E9154F5A
	for <lists+clang-built-linux@lfdr.de>; Fri,  7 Feb 2020 00:28:45 +0100 (CET)
Received: by mail-il1-x140.google.com with SMTP id t4sf85442ili.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 Feb 2020 15:28:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581031723; cv=pass;
        d=google.com; s=arc-20160816;
        b=nnPDuJ/mnYa6NumlyigDTr1bfFSIvI+eE2a0WVqwc0dfsu3ji5ENrM4SDTFXJnVCQ7
         ix/fmy2On5mcmsu8DN3Rza90c7s4Ml60uP777hDg+Dz8XU/xf0QkLZQkYRCqMlCojPwi
         dOmENSucuAxkJHAy116W73/dw5xIJxCR8vCv3JD37oXTXfvn5RNicX+y9TUVtqd8HcCp
         vfetsuIAYKQo2irck2rBe/QUFD1iJlk3F889rS10a64hVSrJ/nt3DDmN8Br6bbVbzY8U
         9stV3wZg8QMiHUH/GxXSmuN9pVRZdNy5VItXsfp5tZNbgDAN1E1ILf54e8f51ZnURytf
         olGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=6UpbWpc6IEIso2PAZUuxowX2yKzLOVRhD6Hc0dpTeEc=;
        b=tzCPySpid20zkXnXcIYuotl394WSQMhekNYiRFcADhiCKQdR1rSjX/zGBjYKfGb4PG
         2jXHTNITHD9kUB6YMMWCiQ9AIOADD+zGS5pyLf4FTnnHU+nPJxF1NcJhnbq3QkiPw92F
         PUTQyEi2ZkNkJ6TX+mleGVnNLqUgYwxcHxrkEnPFP8HaqPRUZzM7Mtr5Ig1m80lbJRTo
         ppLwCTYa8dio8cAgXeMV37SwlIBwyQ9bvB8qY/XfoJUni7Gg75p8NfY7chSVMaPyMM9+
         XLALnPcyCbuJtVMcKk/2kEXJDM0E5H4kFEZFRTQE2I0QLkvC/bHk9MVr6Rm5ZPyC//Mp
         i8Hw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZcKoqhVq;
       spf=pass (google.com: domain of 3kqe8xgwkafcc23hzjac73gh5dd5a3.1db@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3KqE8XgwKAFcC23HzJAC73GH5DD5A3.1DB@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6UpbWpc6IEIso2PAZUuxowX2yKzLOVRhD6Hc0dpTeEc=;
        b=bJ9V0/s49qXmpilWyZIR0gTQ9XOLujpmOdgwqi2COv15Ej4mmk0ER0vP0ISZa5ADcN
         puJWRuNAm97O1PL6lYfLrj2t2Nt2NBmPFzdqXRUkFuX5aNOA9ivsh7lwWgKOKv8+ugN0
         gilfwmCXW/bxJMK4O3K/a0iiE389cHqonjjpmmDHn+0zuL2HDe0J4mbEWqQ1Hydi2atq
         UD0d61UJj+TS7RCqsVtkrhHokbforkA4dpqXSuLE/1Vqj7J1S2POTEa5du8Y6tUadFdZ
         gGmzcNF1pLW0M75zCd/ZB1Uo4QFtrveKmEFJ+ucH7BQ6cFbTRZnX3AhsZiNLEZGyfa7I
         V65g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6UpbWpc6IEIso2PAZUuxowX2yKzLOVRhD6Hc0dpTeEc=;
        b=Y0OrwTpS7YHp017rHYv85PN8AN0Z27kLsmM8oH/gAryhZxVU6g2fdZ0+8XECRtCaCO
         2BmkhBj4ZIWPfvF/bYzrFoXhrEm+1aauY/JBFG0we2g86sqyPDPg2uuNckmXzwvBkSjL
         O8/5/Op60ki3D2fOHtTbPb6+AySOPTvYupLJ6806eVzbvAhHTuSCQW4VmIgzSzTyajCz
         lbal+ofK+GlYUTm+rNlUvwYO0lcMdgJQPZyyg0ZvwcuPDUuz3OrhNw4sL8EwoAVeJ2gC
         3dPqHSEHiSYc7jmGPtcLXtaNaSOFcbrxkxe3t5rnnOdkLeXDfmWh4wHxANqZGYZc6/kZ
         fLaQ==
X-Gm-Message-State: APjAAAX5O3SAQwuzYv6GrJnwI3JkBAJngrd3glp62MdPPub+6qtmXKfd
	bF18XFLUxalFeA91tqTFzSI=
X-Google-Smtp-Source: APXvYqxrhZ4HF1U7PG23rMvCRBpL1MR/ShhXW26kvhYVzKdQ1WvLSfeT0uAV5nKmY2EBnf8jNhM0ow==
X-Received: by 2002:a5e:930a:: with SMTP id k10mr680379iom.132.1581031723669;
        Thu, 06 Feb 2020 15:28:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:7205:: with SMTP id n5ls1702308ioc.3.gmail; Thu, 06 Feb
 2020 15:28:43 -0800 (PST)
X-Received: by 2002:a5e:9417:: with SMTP id q23mr623653ioj.188.1581031723321;
        Thu, 06 Feb 2020 15:28:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581031723; cv=none;
        d=google.com; s=arc-20160816;
        b=nj/R5gjM3DAoiXV2d3IQzKZf7Yi3AramWQgVV7F7mWmkotP+3c/sdxaZpRL4AxIvQz
         eLdubl/ZGEsZX9I7Y648l27jHWWffvjq+e9ogl5K/+1e+FVOi/Sp3acGJYbx49zu5j/o
         R67+w7+pS0Joy8KojfrkMbUhKvwrBEvouG7ky6j7GoJROrSrOPoJtf/Dv14w6EsdnmjY
         rVHyj+bGRtNpWfGIh/LuV5LETccg6slpCY83e+9/DG8PFvBlJm16ysJAn5ZUl0GC02vs
         7nwl96/pEDBcptEa5zdfKuuGPcdd9NBbL4zT+NGc0osfg8kHlf3Em0+BPckZwj8jYsRe
         kswQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=PSJH9GYraFPbhcG+DGJnLRxMg/i8Sc5VCunvDN6ByYQ=;
        b=zdfjKwFGAVChPlY1++/3fOP/TwaoNdR6JH7o9+rj/HPj/YK47LX8S60adji4oh5GEW
         Du/b0/x4y90ooscnL/NufEod71x4yqdrlSbDbIWvgGYemx3nLcZjMtO9vUKWhh87O43l
         BBihpZU7wJDkIbkY0VBjtvwlQNbmDfMQFqK8IgwHaHXXQr+qRmkdRbKaeAYtLHAA631a
         MbjQn/31YVgolyA1kv5VimmbazwxRROMvNQ2yDZEk8aP5nlsnXYB29Lk/Yg4geMrRyqI
         VFOw+Oh5dddmz5HZetEjCkJTyulKHwfUaozS4eOBN+wSBE6gOvxHNV4K1yTkGk7sd4ou
         ClKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZcKoqhVq;
       spf=pass (google.com: domain of 3kqe8xgwkafcc23hzjac73gh5dd5a3.1db@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3KqE8XgwKAFcC23HzJAC73GH5DD5A3.1DB@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id g12si76957iok.4.2020.02.06.15.28.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Feb 2020 15:28:43 -0800 (PST)
Received-SPF: pass (google.com: domain of 3kqe8xgwkafcc23hzjac73gh5dd5a3.1db@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id w11so141768plp.22
        for <clang-built-linux@googlegroups.com>; Thu, 06 Feb 2020 15:28:43 -0800 (PST)
X-Received: by 2002:a63:ba03:: with SMTP id k3mr6733096pgf.52.1581031722616;
 Thu, 06 Feb 2020 15:28:42 -0800 (PST)
Date: Thu,  6 Feb 2020 15:28:40 -0800
In-Reply-To: <20200206200345.175344-1-caij2003@gmail.com>
Message-Id: <20200206232840.227705-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200206200345.175344-1-caij2003@gmail.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: RE: [PATCH] ASoC: soc-core: fix an uninitialized use
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: caij2003@gmail.com
Cc: alsa-devel@alsa-project.org, broonie@kernel.org, lgirdwood@gmail.com, 
	linux-kernel@vger.kernel.org, perex@perex.cz, tiwai@suse.com, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZcKoqhVq;       spf=pass
 (google.com: domain of 3kqe8xgwkafcc23hzjac73gh5dd5a3.1db@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3KqE8XgwKAFcC23HzJAC73GH5DD5A3.1DB@flex--ndesaulniers.bounces.google.com;
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

> Fixed the uninitialized use of a signed integer variable ret in
> soc_probe_component when all its definitions are not executed. This
> caused  -ftrivial-auto-var-init=pattern to initialize the variable to
> repeated 0xAA (i.e. a negative value) and triggered the following code
> unintentionally.

> Signed-off-by: Jian Cai <caij2003@gmail.com>

Hi Jian,
I don't quite follow; it looks like `ret` is assigned to multiple times in
`soc_probe_component`. Are one of the return values of one of the functions
that are called then assigned to `ret` undefined? What control flow path leaves
`ret` unitialized?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200206232840.227705-1-ndesaulniers%40google.com.
