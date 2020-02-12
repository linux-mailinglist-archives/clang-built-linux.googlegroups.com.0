Return-Path: <clang-built-linux+bncBC5JT2XLREPRBSPCSHZAKGQED5LNEXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB9615B2E8
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Feb 2020 22:42:34 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id v14sf2241597pfm.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 Feb 2020 13:42:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581543753; cv=pass;
        d=google.com; s=arc-20160816;
        b=yb4qMo9W6poAp4blv30q6WR7FnaXWVRyAzO8Y/U0aS1br9PpXNZVGZRhOxmhwYgtE6
         bqiMiGbYFz03nFQclHJoQtPx0osauLoef2cR31l1xjXfxAqAvoWY4/FtevAZlqlPXo7b
         ybfse13UgQmtpdTNTyLOp/qAjNW7Pk4vfBy7MBP+9RPDvaMNbpEjP61urg73FW+evY1Y
         YUC4Qj84ym7F7MbHvXI7CPOgaxw0cxwSWpIBhYVed22U0pxO3MZYND7hlWF1N4HeGLeO
         w4ZudcDTLTv9FW7uPZcCgrD+Fi8cxTMmnq1d1zdorRzgliBDqOPD4/HpuQM8PMP/+dtg
         caQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:dkim-signature;
        bh=oTedB9rwZnyf62AdEH1M1JR7eTmLV4oGRsRyNi3/IZ8=;
        b=wdRolidEHY20bWSHYAQnTEcus/PJ6cHV/d0c3w2flw+nUnaUphFwtgGvHq4irBWb5W
         8KozjFaojTZKFa4FidAhp6x7ILb4q8bIPe5tgylc/2ry7WEgFhXEYDI3MnZFf/1OWQ/J
         r8ZeQ5Bg8EdDXXKXIJkXZy2DMxT1MySE5kNrFwDX6prWdnsZXIjBOeBRcLaGPS23vIui
         1S+QmdKMVLJkiMaIu8XOT1TqkmoB51Ok9xec2hxQ1PqYPTfvEbHWcMaGe2SfbIW7BkcR
         tp0A5Po+ihjPjoIGSlmx7grmT+RvTwe9wpCLjM6xhSgNQS4Cx0r0qklDmjhKp6ptUlkW
         y4ww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="qdlJwX/U";
       spf=pass (google.com: domain of keescook@google.com designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=keescook@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=oTedB9rwZnyf62AdEH1M1JR7eTmLV4oGRsRyNi3/IZ8=;
        b=KmehUocEIhxxNexIs/c//pSLX/pTYgIogK4pjJAyrJqQOFa8MP8Odoi16RpwI3n1K6
         yF1r6TV/cCqHQJYescslC8wUVdDFgsHF9sYtZX4t9pF5J4ZcafInPHGREQu0Yyj68mUx
         I6D/ZBoRpgX9Zx1geBTC2DHLKC7ct+VemlTIbRwXNEH7KeWiEQYUsgnu3CDy6g0sg0VD
         /BYkypzuzoFqeCdVFEmWOdQHlv6VFa4ozU4nOnHV1rnSjS4GVgNeUf2+jd8GzkKeWFtz
         QoKjfD3sdGxR+JOXZ6nSb4CZua2h9Mng//ZK79wfM2R9IUc46QA8LiAfZoTxoJ7I1/ey
         r+ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oTedB9rwZnyf62AdEH1M1JR7eTmLV4oGRsRyNi3/IZ8=;
        b=QiFBk45roKHo3GzB9JflwuWAUmmhrnvF+JIhk6cikzD1s4R7xJXsIABcoQcO7PNfw7
         FRw3dX8jcL7va3GbaM5+RFPR1qj9ieIXiG6IVmzNSwuJSD0fzfaq57XoCYEaC2z1lPBT
         7ntK4vfgxfHEbahulYtLOVyhGDRvdhwe7h03hhrT0dcXnhHV4PmiGaF3dfJrUcVlsSzU
         npdw+VvOoVumyXcbVJV9OMZdWpflCTc/3hnCGBN8tFMlfpbCQwrecchs5IKZYiytwBU+
         1o38lEFypZWv666mIm6lEtnqMJabLpDVXHoH76aGaRp8M38LR5sZhJEHryFp7uySCFpy
         x7Bg==
X-Gm-Message-State: APjAAAWiPLOiyncVBEwMrjqq17WrZDOVBVKAG6fcsveI1URiPxZDy9qV
	Hqy+N76FPjfGbA+l9KC7BUI=
X-Google-Smtp-Source: APXvYqyLXA1HUVx7si4me1P9I7Uj550RiZY4xSBBebI9gImW5IFm6BpbTt1MQykfl+ojRCKJ9F6uNw==
X-Received: by 2002:aa7:8b17:: with SMTP id f23mr10669866pfd.197.1581543753269;
        Wed, 12 Feb 2020 13:42:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:b26:: with SMTP id 35ls315481pjq.1.gmail; Wed, 12
 Feb 2020 13:42:32 -0800 (PST)
X-Received: by 2002:a17:902:6a84:: with SMTP id n4mr10229151plk.294.1581543752848;
        Wed, 12 Feb 2020 13:42:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581543752; cv=none;
        d=google.com; s=arc-20160816;
        b=ZjhSBhZB0JH8oq0ydrwKrei9bh2EXOc1xQfyjoI5MvXuM9gzvirKsFT+TMSjdvY5GM
         +ZXJ052F+3WtCmRtEoR+KJ2rCpG2/Uv5MbYOy46up8i+E9yGPoFlugnFmENFSz6niTRc
         sCTUoyAL9dPgGiHfoVdxVoHx0hj0mH+dxfmm5Fwz/lo4csuOR0wGaA6+7l/fh806DwuP
         M0/Wz8HsLVUIBgOLMX/jtHjZbJcsyOU2r/VppPvE/wLczv197b2iRPhVsZS8apihP85G
         swRTgtRgHcvWpCReNxuzUs8rcGSjh02a6e3PSlfWaO3spg2rRFfr4XqxMY6FZFDZkTvr
         jUDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=mO7BB71ZMh2gLaKZjWhXC4mXfh7ErCvzZkPxmdtaSvI=;
        b=jUKA9n9WCM8fOq6T0CBaUEG4R+grq8RNjWJA93VTnXuzkFZsqVUsTdbnGNYDh8uHeL
         pylcHYwlcBgaHNRYmwXdUWkVTOIYjESMTgesZcZuJc/0cwQ3c35PoHyrh0JKPuU2Qck7
         43g0StDVgfH1HZR/zzOoKPLqP5JuQ0ko8X6tGCULLPnt8ucF+5wHi7WXak2d/DMKwTsL
         Gfm//HbL8JdU04EGsa0MYMT3lpy2pKedHY1D/6k1bzOlv4JOLwIlohHtSqrzaPnKkUlU
         6YefmFn7BS5MLwqvC1Y1bj5veg22MADaz1KwEUQqKgASpbmeO+ulRHkv0q+c0UFa5fiE
         4Blw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="qdlJwX/U";
       spf=pass (google.com: domain of keescook@google.com designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=keescook@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com. [2607:f8b0:4864:20::b43])
        by gmr-mx.google.com with ESMTPS id h2si443938pju.2.2020.02.12.13.42.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Feb 2020 13:42:32 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@google.com designates 2607:f8b0:4864:20::b43 as permitted sender) client-ip=2607:f8b0:4864:20::b43;
Received: by mail-yb1-xb43.google.com with SMTP id v12so1886305ybi.5
        for <clang-built-linux@googlegroups.com>; Wed, 12 Feb 2020 13:42:32 -0800 (PST)
X-Received: by 2002:a25:9806:: with SMTP id a6mr3533938ybo.226.1581543751180;
 Wed, 12 Feb 2020 13:42:31 -0800 (PST)
MIME-Version: 1.0
From: "'Kees Cook' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 12 Feb 2020 13:42:19 -0800
Message-ID: <CAGXu5j+tZSqG0Wcy=pEL8aZ5u1g5vPYYAQTY5Z6fGM46Oq7GJg@mail.gmail.com>
Subject: --orphan-handling=warn
To: clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: keescook@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="qdlJwX/U";       spf=pass
 (google.com: domain of keescook@google.com designates 2607:f8b0:4864:20::b43
 as permitted sender) smtp.mailfrom=keescook@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Kees Cook <keescook@google.com>
Reply-To: Kees Cook <keescook@google.com>
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

Hi,

Nick asked to see my (incomplete!) series for reporting about orphan
sections, so here it is! :) LLD emits WAY too much with this enabled,
so that needs to be examined first. And there is still a strange issue
with arm64's extra sections (noted as a TODO) that I haven't tracked
down the origin of. (I assume it's something about either being or not
being built PIE, but only one .S file ends up built that way...)

https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/log/?h=linker/orphans/x86-arm

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGXu5j%2BtZSqG0Wcy%3DpEL8aZ5u1g5vPYYAQTY5Z6fGM46Oq7GJg%40mail.gmail.com.
