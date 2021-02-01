Return-Path: <clang-built-linux+bncBCTZ5O62V4ORB6UW4GAAMGQEWIMZP5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C84F30AFA0
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Feb 2021 19:42:03 +0100 (CET)
Received: by mail-wr1-x43b.google.com with SMTP id d7sf10929692wri.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Feb 2021 10:42:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612204923; cv=pass;
        d=google.com; s=arc-20160816;
        b=bEAWZtflOjC6Mu7jeg9A3aN1y5qENcXRp5cptJ5a4vpME0hxxLt5Dtbe7kNzTEohNn
         QilXPFjIhwpf50JMQKfvl/Wa7c/z9GtMRiG/VIhxZ09WaZi3zOdrRfMl6LtVLseweFdA
         9phzSIj5e0rbK9APU8e5lUyOINxFWIKcDtzu9CVkXwgjj7RFCW9Vg+95VBdTofdN1WXJ
         O7uTcurgV8mANQf5BWZoGdk0uebQ9TyLy9npinjUhJ+uPdLzdkY8Deh2WTYqJsUyEzlh
         A5UyHxkeJ0gx5Xg3i9WdNzepPWJ6+JrfM7OO7l0AwcZUFzw2Xwij7+XfYiqQq5G37J7z
         CIsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=V4VW1+EGp7p4OHNAJTGWVtq4uU1/hjBtK0Xz/lQTOKA=;
        b=PJb50vanmVcegHX/CldFz1nKmkUFWmYtQ+R4hD/zVR8za0yo7sY/WF1F+yBR7ZxZLO
         wxWmDnHNkqPYOALGqb7rBicNV1l02lMlJGrQZ3VGstnPURoFeXkQy3IBXG2G7XxXFBh+
         K/xmIV+txZ0MbcEa9w1NCVcxk2Xwq3aXHuYnVmFgg/8MzwAhYUdZ5c6eWySel/soZCN8
         Zh9OkBztDTcySE8AEUIx6W9zRk31Oypqc55OGJFMRgT84kd8q1tWxkTFWwzuUMVUE1uT
         kBayhlJzY/lSncH5N4Dsk6dEXbah0DEQUnbdkzejLkifxTfpV2E5zyGP0VtOds1kdVwA
         1nlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WssRBfUX;
       spf=pass (google.com: domain of viniciustinti@gmail.com designates 2a00:1450:4864:20::436 as permitted sender) smtp.mailfrom=viniciustinti@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V4VW1+EGp7p4OHNAJTGWVtq4uU1/hjBtK0Xz/lQTOKA=;
        b=O6CRqqwVxBozfwGHaNgPzI86vFno8qFKUg/xE3mUR7ijGPztfYHGO4x+7FkjwcI6W/
         omctceFeMaS85bzE5xlVGfPgj0+vvi/MPf7kwHKF+lM9VjuqaJdGPAwA0/DsIdKkv/Ui
         irNY0bMjbg4vUwSdMb601VNm7s0PIQCDvrxr7/N6ks7MP1wVj8uWzeR7H5U0w/Yq7H+F
         brieDAGufKAUxCzA2jDu+MQa6UV6+MWkIIhYMxB04rvXOikF/57tU3MMDXcm9U6+Cp7g
         09fIWZJ7Hk6Ncf/ecnQ+TSryVaBqB5ZKrP9wmoS0MumDTw9+tTJYsPkHRmBjnX7Bd7AL
         lPtw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V4VW1+EGp7p4OHNAJTGWVtq4uU1/hjBtK0Xz/lQTOKA=;
        b=dpbgclQwc2HorT35EQ55oDjrezqKfoJPnnlTmitphGnX+9uUK7YnSiz0Ns3ynyWBjn
         5ZlUhDK8HSSMa/tKIHsGjfeT5rsbquFxVB4e1RZ2swteh1D8p6Vr8BMZmojicpMbziaT
         ktvbqV66lMxWVfbnjOCToet0zzoiCHG2QF1VF3JV8kB9wtcVG0GAdIZ6iwwcA6vZ4ERa
         t5rSczhRg022obYYTp4dpmtsrn79GZaudOCbLRm1/saoTcsBF9L/xGDuBee4safHLIW2
         lNcZrUx312qKGfG6qGUJktpT8Zl/uj8/YQoh+quOXc8cx65N7/y+tUGLSHi6Qm9Rh/Gh
         lvTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V4VW1+EGp7p4OHNAJTGWVtq4uU1/hjBtK0Xz/lQTOKA=;
        b=aCmYrFxbFF1LV9BQCG4GmRiX5PIl/JMFAcVonzhZj8Tie5XXjUs5uOnDkP9t94cVWp
         mPfnACMFDM1WWCHKO1GJ5WLu0I7e0nE2YpqVkQasp0S9jwa7hTdSUopTxjet6H6ji+I4
         LF0dqS9gf3pTZKVKggP5yiUFAJtkuN25UobU8pJbC2cvx7CeoZGyQxcWnp5lLB29arZo
         B/LDF2hvAer+Tt1UvuJ4wzX8JuF5Vl1xJiQhklbM2i4dnGWkAKxFjSysyWCQhx9pCWnp
         4L4hKBOo/1xGjZtu6jm2uv74EWtXdK4gPtSmvUj/4ai5iQpSA9psKMUbR7xbvNWoyEPH
         nPqw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5327sQPicOTo32nMaYr7MhgG1QBuTAxaxQMZ35UYoTsq+NR32bI/
	8ASMuhnAYdNzzaLLbm56wxo=
X-Google-Smtp-Source: ABdhPJxihQm1LJqjgVMdc2/xs7aly40HUImVQ+UstT1oN0QRFCxEUrpOXC4//KTiph6jGssUXDG4Ag==
X-Received: by 2002:a5d:4f84:: with SMTP id d4mr19398056wru.374.1612204922943;
        Mon, 01 Feb 2021 10:42:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:770f:: with SMTP id t15ls69217wmi.0.gmail; Mon, 01 Feb
 2021 10:42:02 -0800 (PST)
X-Received: by 2002:a05:600c:4f13:: with SMTP id l19mr232899wmq.70.1612204922138;
        Mon, 01 Feb 2021 10:42:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612204922; cv=none;
        d=google.com; s=arc-20160816;
        b=BNySjycBSdgX6VQ2OR4+Wv1KgPCYH7QdJty8CDvSg3Hquc9p2O/fuVFnMLsnUDLCDx
         0yWDa3Erek6dMODxRu0E6R+crEtwXcBNCjJKPtPX88mj+UF5xJz6LtTrxwOswOxNkpSA
         BaCq9KithtOQaPL1zrYFKtDegCF4gZjmn9+H9kahhV30Zz9Rn5rcpDCLyu/NZMgfvLYz
         3xa/wztvQp8to2joyFq7uG0EpUxOXpaLE91wy7GyqABcX2GCibrC3Lo/XuWCCGyKETnG
         6/KijYn9J4lkA5hkWiSO2zYGZNODTJfpi1q0VSApfs6fBbdsTP8WqCPoFTX+lry1ZJ+T
         G+UA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wmtu6bNpF5dPnSRFTlVUqn3pIC+xqRbu0mxekXQ1e2w=;
        b=LbmIzRAj/aCRfAD7LbduRrRtUcJ3GCOkC67z/ziQYF+E5WuYcuk8g6mqui2/HVQQ6L
         BSM0x3mmgltdPVaDqrGamOjg/7FNDGasy9ar1FivC0WD0csWVv9OSu07rlv+6cRgFenj
         WQ2eJtuljSf/K9zoazUAJ0rEOioi9d0ltE8wKkzYxEVJHfF97aRCmp0IZHQMmCknqbQP
         YWSx5KJew/qybqyNMQ2qTti7OyHYffSfhH7NYcP4rgAp8Mi6Jcnh4Dv0vQNaVT5bks/S
         IlL5xfta4VfSzuxm2HSZeqGJtTNx5HprVpsq141V2cxyd4fkU09j0XvHTFccho2oWfQn
         Or5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WssRBfUX;
       spf=pass (google.com: domain of viniciustinti@gmail.com designates 2a00:1450:4864:20::436 as permitted sender) smtp.mailfrom=viniciustinti@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com. [2a00:1450:4864:20::436])
        by gmr-mx.google.com with ESMTPS id s74si5470wme.0.2021.02.01.10.42.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Feb 2021 10:42:02 -0800 (PST)
Received-SPF: pass (google.com: domain of viniciustinti@gmail.com designates 2a00:1450:4864:20::436 as permitted sender) client-ip=2a00:1450:4864:20::436;
Received: by mail-wr1-x436.google.com with SMTP id a1so17774725wrq.6
        for <clang-built-linux@googlegroups.com>; Mon, 01 Feb 2021 10:42:02 -0800 (PST)
X-Received: by 2002:a05:6000:1543:: with SMTP id 3mr19861502wry.254.1612204921821;
 Mon, 01 Feb 2021 10:42:01 -0800 (PST)
MIME-Version: 1.0
References: <AAB32610-D238-4137-96DE-33655AAAB545@dilger.ca>
 <20210201003125.90257-1-viniciustinti@gmail.com> <20210201124924.GA3284018@infradead.org>
 <CALD9WKxc0kMPCHSoikko+qYk2+ZLUy73+ryKGW9qMSpyzAobLA@mail.gmail.com> <YBg20AuSC3/9w2zz@mit.edu>
In-Reply-To: <YBg20AuSC3/9w2zz@mit.edu>
From: Vinicius Tinti <viniciustinti@gmail.com>
Date: Mon, 1 Feb 2021 15:41:50 -0300
Message-ID: <CALD9WKzO53AXQW-qQ82VZ41H5=cGdLTUiEoz3X6BmPkb6XaTag@mail.gmail.com>
Subject: Re: [PATCH v2] ext4: Enable code path when DX_DEBUG is set
To: "Theodore Ts'o" <tytso@mit.edu>
Cc: Christoph Hellwig <hch@infradead.org>, Andreas Dilger <adilger.kernel@dilger.ca>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	linux-ext4@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: viniciustinti@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WssRBfUX;       spf=pass
 (google.com: domain of viniciustinti@gmail.com designates 2a00:1450:4864:20::436
 as permitted sender) smtp.mailfrom=viniciustinti@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Feb 1, 2021 at 2:13 PM Theodore Ts'o <tytso@mit.edu> wrote:
>
> On Mon, Feb 01, 2021 at 01:15:29PM -0300, Vinicius Tinti wrote:
> > On Mon, Feb 1, 2021 at 9:49 AM Christoph Hellwig <hch@infradead.org> wrote:
> > >
> > > DX_DEBUG is completely dead code, so either kill it off or make it an
> > > actual CONFIG_* symbol through Kconfig if it seems useful.
> >
> > About the unreachable code in "if (0)" I think it could be removed.
> > It seems to be doing an extra check.
> >
> > About the DX_DEBUG I think I can do another patch adding it to Kconfig
> > as you and Nathan suggested.
>
> Yes, it's doing another check which is useful in terms of early
> detection of bugs when a developer has the code open for
> modifications.  It slows down performance under normal circumstances,
> and assuming the code is bug-free(tm), it's entirely unnecessary ---
> which is why it's under an "if (0)".

My goal is to avoid having a dead code. Three options come to mind.

The first would be to add another #ifdef SOMETHING (suggest a name).
But this doesn't remove the code and someone could enable it by accident.

The second would be to add the code in a block comment. Then document
that it is for checking an invariant. This will make it harder to cause
problems.

The third would be to remove the code and explain the invariant in a block
comment. Maybe add a pseudo code too in the comment.

What do you think?

> However, if there *is* a bug, having an early detection that the
> representation invariant of the data structure has been violated can
> be useful in root causing a bug.  This would probably be clearer if
> the code was pulled out into a separate function with comments
> explaining that this is a rep invariant check.

Good idea. I will do that too.

> The main thing about DX_DEBUG right now is that it is **super**
> verbose.  Unwary users who enable it.... will be sorry.  If we want to
> make it to be a first-class feature enabled via CONFIG_EXT4_DEBUG, we
> should convert all of the dx_trace calls to use pr_debug so they are
> enabled only if dynamic debug enables those pr_debug() statements.
> And this should absolutely be a separate patch.

Agreed. For now I only want to focus on the "if (0)".

Regards,
Vinicius

> Cheers,
>
>                                                 - Ted

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CALD9WKzO53AXQW-qQ82VZ41H5%3DcGdLTUiEoz3X6BmPkb6XaTag%40mail.gmail.com.
