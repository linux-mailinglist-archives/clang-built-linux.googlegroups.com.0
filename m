Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBJF3QOCQMGQEMQBV3VY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C293381D73
	for <lists+clang-built-linux@lfdr.de>; Sun, 16 May 2021 10:53:57 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id f12-20020a056e0204ccb02901613aa15edfsf3913253ils.5
        for <lists+clang-built-linux@lfdr.de>; Sun, 16 May 2021 01:53:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621155236; cv=pass;
        d=google.com; s=arc-20160816;
        b=Rzf9Tf1lSEeLfWbfb6Tyyy9aMfDfnqTJAx+EhOf5xIZULy1ehzQxTFQhRqnPhjMAXJ
         broBSLjT/eWXrrwVafEYKRzwf2IJLCsePX0K6hbTe67UcNb+O9d4YxaQkrmyaYuL1Hz9
         Wlkkw1h8Kk6aUZpJg9NtpVA8EO6IwGpiG7gwBtCzEorGXsFXnHgzxQM2yQGufO7LW2UJ
         DzXS9HW8caY5HK58vVF/VT6V7U63rvGE/zVSIS1pGTbpedDkoDCQRNJcom/8HdRJ0FAe
         uiCEsPiI7fY0Fcjo3GAPjRCo/l+UCdX0570lh3F3Iy0uU20RFpZa4s09xt4XqnsAQ9ve
         /lEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=kkL5mydbPZVw12iuUA2nVUjVYs4wW+PvzKpaq1XerqY=;
        b=koKqCULMDAGdA7ognSeQYIdF6mJ9XyZXzHeNMNuNtE3Pd8zEGCtJdwnCUiD4w71bbX
         n+wxpMd4LEyQp4gnNO3jyfo1a9NFwa1U8h3/ihUu7j/3s1dcNUWqD66NUqYkIZYsZkd4
         +hBo/HSDGtxaoj6GjOQaOtMMhrcg0KGg6iW+vWEr2Cgz1+nq5SRC4l5NXtaybS1oHMd7
         VZPxo8iRPqvXu4QE051SP+9T5SzBx5igEuDL8aORMIvahbPdgSHnNY9VarCyKCkp1Xdq
         5zC8dnh7RYAQs24lS2Q5QzDebxJAhXJHbubS8gbsTfNUH/M8zY3dAhi5kDRotR9S2KS3
         IqiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T3INqGrr;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::b36 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kkL5mydbPZVw12iuUA2nVUjVYs4wW+PvzKpaq1XerqY=;
        b=ncIt2MA4H28Ds9zLiKawX1fwm/2TP9DZaV+vtg7G3eF2WdETkhfCtUZas1kEcgiYSg
         OKZDNHFFAHMt54GGdp5mopk7yNGgSB61zy7xI8eLK9gAhJ8y8LusWMwT6air5GgTPvx2
         CKvqwkOMJZUcvgvmqn10Blp0Uxb+0IBAnsN/aGOG+u2DPMcXl9O+XG55Rr9m6t4fakOn
         XSKalgrEH+yA27taa972/7mfYpBBpVIgQOF/xHGWlOToW2F6/CL+s2ivmyfXNoCqo+K4
         hpKbTcP7zNQxHkRpOCzk8tHW2+VdlgyYmZFbxjqxTzrWl4xJ5AAIT1IV9TG0+khNvmXm
         i5yQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kkL5mydbPZVw12iuUA2nVUjVYs4wW+PvzKpaq1XerqY=;
        b=WplWyJIAAz21KsG9+p+JG1ughOOkK9eWrxBY0gdcRE07hRL8f9Ph9Gl9rWYMVSJ9gK
         vonbbvcT541pPuamYBKWOwYzT896nIYI7/BMHLu+tEwUKqTgffCvYKhfaUfB6uBfEN98
         Q4iUQ3bmobzEK3nbO/fKzQbQy1fOoEEIXyxk3slNECPJ6MG29AVEujL+X/Jx2lF0+dAD
         Ai87LZ/XtGY5WnZRlbVya2AzkpPm7BeEpA2i4CynABFU4VXY6cZPu9Tf/rParHjkExW8
         MS172IL3cgcJFeDVmQJxUWTlO4GUTnrNgPYDT9Vu46/LrwqKeOjyv5zD30KrxZEvQjrU
         GmUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kkL5mydbPZVw12iuUA2nVUjVYs4wW+PvzKpaq1XerqY=;
        b=fWHjsnSNcPav1CiEPfLwlr8J6/21woh3qwCMqgITYi/geDw/uHO4PkZewOS14AiZw7
         mVmGLqyD/a5wKnvNP4RrdeDStEkOE0BPab1JU1BBVnk4Ju0YwDCM7wlc/hkyBhv/S8T0
         YOKw7jgkWKWPWcgVVLoyFU19qy9yxt2UKlT9vvBdYk48kOhsrZO6IMIexvfsUjzt5Fkf
         O/2afUZOvTfIFbkj+p9c92q89kFv3WRChkPnFBR18mnkleKBwgdSd89/ftfguqzZVVOG
         cIfzTZ++Wrl51h5ocd5SUDMWlQsk3PXro2JWTs9Hfk+iaVnPjf0h+Uyly+3WYS/KaD6k
         SoBg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530m7ZF9zQmPZTfUzTdm05fMDfOibUCouAreE0v5GFJJBTwl3WD+
	pMOHtm4xyyvD2vgSfWntpHE=
X-Google-Smtp-Source: ABdhPJyTH4VgWck6e5y+f/C85R13/I6zlLRmh2dEcYryF8psirqOTJT6cQftZ/Qm0VC7t8GHjbApNw==
X-Received: by 2002:a92:7d07:: with SMTP id y7mr6432866ilc.68.1621155236282;
        Sun, 16 May 2021 01:53:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:d002:: with SMTP id x2ls2047659ioa.11.gmail; Sun, 16 May
 2021 01:53:55 -0700 (PDT)
X-Received: by 2002:a6b:f311:: with SMTP id m17mr40406590ioh.162.1621155235940;
        Sun, 16 May 2021 01:53:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621155235; cv=none;
        d=google.com; s=arc-20160816;
        b=afeEvgkMQPORs0n2qcbLqYwugxj6uVO0A/XM+tbSQGqAB45AonIwrPLZLLHf+gdfYT
         fPpTq/XtCk5+tbWFL++1nyz++oTxrPLVMvHD3y2aM7/OfoijBeRf7XucleCNf5pN7ruJ
         Xpsw79uPRvx+OI46o4HWopTop1aNWP79JlDwmqiFhK6YLZVUuZpFx5/WUBy10wXLGMhf
         i7FSjm94jzIiIzb+5fVEtye40QqemhkXIU4gM4qGM84VrA5zXKjIRVjKkbubLliDa9SW
         Di6e6+jV1asgxX8dw5H9cut0Bfv4UpVxEgXx2BOEIQlIr3ebaL2Sg9mmrX4PxA7pnb5q
         0Jaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ftA4ti5/6sdNr5V36MO+h2jetmzHwEt9RUH/PLBAxY8=;
        b=CmhuzMaBfN0Jlgj3NrNPy5ydYALmW4CqL5M2RkStcclFt2KSbqHE+D1jaw/jtcP2oQ
         TQP/p86+UMa1fzDfCDLmaapsDgt+r2x3anFPFfACDovl/dNxfXvWWp0mRusj30cs9e0u
         z5XHhgDYgFm55GUwvsLgRRRJhss5OLh9QWwiLq7oUZF+BqH/hr0xAjHjxxyCy/pTfGr3
         ouC6eStTqwxlntimawjAn707BIYcjO7LpdxF2EkEzuk5HeCZX8zRvyDJ89z8sec+93Vz
         dMEmsHj2+tEVurHELiq3MuIkPsin5DYTJ+PRCSfL9Qjpw9pNAa8k5JsFBwt2jjy1y5MS
         OT4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T3INqGrr;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::b36 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com. [2607:f8b0:4864:20::b36])
        by gmr-mx.google.com with ESMTPS id v7si664956ioh.1.2021.05.16.01.53.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 May 2021 01:53:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::b36 as permitted sender) client-ip=2607:f8b0:4864:20::b36;
Received: by mail-yb1-xb36.google.com with SMTP id g38so4550866ybi.12
        for <clang-built-linux@googlegroups.com>; Sun, 16 May 2021 01:53:55 -0700 (PDT)
X-Received: by 2002:a25:7909:: with SMTP id u9mr72457023ybc.22.1621155235692;
 Sun, 16 May 2021 01:53:55 -0700 (PDT)
MIME-Version: 1.0
References: <1620984265-53916-1-git-send-email-yang.lee@linux.alibaba.com>
In-Reply-To: <1620984265-53916-1-git-send-email-yang.lee@linux.alibaba.com>
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Sun, 16 May 2021 10:53:57 +0200
Message-ID: <CAKXUXMyjh1mnLpyu_xa4vWAv9Bn_EN3YdhQ_r1aD58YvFTRORA@mail.gmail.com>
Subject: Re: [PATCH] btrfs: Remove redundant initialization of 'to_add'
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: clm@fb.com, Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, linux-btrfs@vger.kernel.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=T3INqGrr;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::b36
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
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

On Fri, May 14, 2021 at 11:24 AM Yang Li <yang.lee@linux.alibaba.com> wrote:
>
> Variable 'to_add' is being initialized however this value is never
> read as 'to_add' is assigned a new value in if statement. Remove the
> redundant assignment. At the same time, move its declaration into the
> if statement, because the variable is not used elsewhere.
>
> Clean up clang warning:
>
> fs/btrfs/extent-tree.c:2773:8: warning: Value stored to 'to_add' during
> its initialization is never read [clang-analyzer-deadcode.DeadStores]
>
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> ---
>  fs/btrfs/extent-tree.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/fs/btrfs/extent-tree.c b/fs/btrfs/extent-tree.c
> index f1d15b6..e7b2289 100644
> --- a/fs/btrfs/extent-tree.c
> +++ b/fs/btrfs/extent-tree.c
> @@ -2774,10 +2774,10 @@ static int unpin_extent_range(struct btrfs_fs_info *fs_info,
>                 spin_unlock(&cache->lock);
>                 if (!readonly && return_free_space &&
>                     global_rsv->space_info == space_info) {
> -                       u64 to_add = len;
>
>                         spin_lock(&global_rsv->lock);
>                         if (!global_rsv->full) {
> +                               u64 to_add;
>                                 to_add = min(len, global_rsv->size -
>                                              global_rsv->reserved);

Yang Li, you could just combine these two lines above, right?

So:
u64 to_add = min(len, ...);

By the way, great contribution on addressing all those dead stores
identified by clang analyzer... I wish I would also have more time on
addressing some of those remaining...

Lukas

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKXUXMyjh1mnLpyu_xa4vWAv9Bn_EN3YdhQ_r1aD58YvFTRORA%40mail.gmail.com.
