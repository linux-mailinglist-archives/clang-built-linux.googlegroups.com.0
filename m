Return-Path: <clang-built-linux+bncBDYJPJO25UGBBY4UYXZQKGQEF6WZZ5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 01458189111
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 23:08:37 +0100 (CET)
Received: by mail-oi1-x23b.google.com with SMTP id x24sf14222441oie.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 15:08:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584482916; cv=pass;
        d=google.com; s=arc-20160816;
        b=mFFdv60WBCyN5eFcDJpPTQDvFUYCEQMJ7pDjY8Hy8s74r62FbyxIS9FX14q+HG0Ynf
         pACyB83tg7eMKqwS3y5G8+ltUikVoKB/dj8euAuAd7feIUEpKNR8AWlT/r/O92V2sXni
         gVL6DM5INaqVgwH69SVgghEg0NVVsRmoYA2hZnSGx025Sww06eBr6E+9NyjmKFCkLSj6
         nujrM402qD0bQKfNBN1Kv+R7CSBDhslCP8TmyW3nEuUKChLyqfPpYxaN/QZyNTbB9dKo
         /C21ea/enDsipI/5Hm1Ms63w6qVCwzqJWfar3cbGwZCa+mnToVpmIoSDT4fnPAVEqp4Q
         f+JA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ApKQjmE4ZmcXjmsHZLtGvz7lkunvWdCOq7CateEK3XY=;
        b=GfqlfVGfGkUYSev1oLyBAt3Qs1mkCOToE8h2cw9R7dBJuRFkpL0dYWNMzHvApr6QOa
         tmz+5dmcIfE6eaHpMaAsrRr7zxmnP5pATeHLhYioJTxk0wJ2n5sdB+9UF+BcJN9CowMl
         LN42GR00SWiGBCOE+F3iOJgB5+KXWfGn/DMYcWekESJO3kKYh4WMGl94qiLB7tSXMc+u
         9Vsv7I5B7AsZ1XFsIsSDthoeOskX+wFNtH/q7xpclmEcZxPtmAnmAAgmJE6Q8Eyi8tv0
         QHToWt4GjAMF/0HQqXJNKIU9UeGqNThD0eZFtQfZIevEOStLLhQEv7OjSa7dguFTxzJj
         4OTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dVWGGx4E;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ApKQjmE4ZmcXjmsHZLtGvz7lkunvWdCOq7CateEK3XY=;
        b=nsjirUlpq8q3Hd2v7X7MVaPhs4JtEvUD1ham9bc2QhotmS206pdCMgfTmsMbTSiEaE
         MIjTwvRpui6UN0rIhEJcI0PJh8SvbCEBcy+w8reY870tVXh7KaMUeQEhKDD6+zhRJAU8
         w8VqOvNwTPlcNTlbNVEmJdR5oXyXLu7zmZQc2KLPcxYaTvPx+8CmiE+Qq/gUokvVteFr
         rAdh9xnBKi/9Ub1Qf+5zU9OL2XY9P2f3iLLr5OMuUEMM66mVxMlrlbeDXcnT+61DKAIS
         +Js5rvnFERt8wtayVqB1iEkBB25FvCqtqZF+CSbNmUPiC9ZsYW9c9JyRFI0PNxN2flW/
         meiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ApKQjmE4ZmcXjmsHZLtGvz7lkunvWdCOq7CateEK3XY=;
        b=neumY1sEozkIg6vKe26gM+35IZU8QHgl7zebqa1h+r/QdnecDe687mFd4xwpznQghM
         J0qkKYcL/S0fLhwu7rX2sztqXmcRFJi0yMuX7id51E8nb1YB2nPkntTgRto2/i5+ZR5V
         igbN2qLZtg8hVL4UzbAeXaTw5XgXBQPYbmcFbIDbYW6tnLsSMpy/hnQScNzzxJxQnSPU
         QmKtXe8KaVKbXkn/HkMhvX++7eLSous5hmK9fQZcYfMwuPX4wBo1gy/Gd8Mgm4wAMJ1z
         KXuGyzE31L0qgXaSvMbkEVZLiv748aqVMtrAeJBHNvfcrYcZNcurjJCx+Tk2G8v59ugy
         4mEQ==
X-Gm-Message-State: ANhLgQ2BfECugXbl2NIDzCmb/J1EpLU0SJtM8vNoXm0IY52X+S8RAmU0
	+rfnpyqgjuc/psD9Xt1EX+Y=
X-Google-Smtp-Source: ADFU+vst5UGCkynBdhL/DGSkmzn+WqFrg1nIgFOClEr+11jM/ugmunZSymkDavxSn25ijDATA/LW3Q==
X-Received: by 2002:a05:6808:6c9:: with SMTP id m9mr850305oih.157.1584482915886;
        Tue, 17 Mar 2020 15:08:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6a5a:: with SMTP id h26ls8425760otn.1.gmail; Tue, 17 Mar
 2020 15:08:35 -0700 (PDT)
X-Received: by 2002:a9d:1a2:: with SMTP id e31mr1382330ote.30.1584482915451;
        Tue, 17 Mar 2020 15:08:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584482915; cv=none;
        d=google.com; s=arc-20160816;
        b=wfL8BGcKuwZvS15Q+yEFp7tw/I3xh37IejLvhtbkek4Uk0UIbWN3VgaBuq58rkqRNW
         bCBaDkWSSHXEyG3oESEPDg1KGtQOWjNhSB8I5ZDH7LETGkRBvX5rIf5Dq6/uiyLaNY+I
         CDhikUAPk4c5R6GUahFPIQeIqtjqTPH4KyoPq2vPHYMyQG9XpMpm13rli893PzJy21CR
         YluDDGrdYYDjw4yG9oIK43RGW+JNASJ1oS30/QdXw974zjcnM0S39kRlu8FYuptif4er
         aGwu+kKV8nJaCZSYCVPfCOYYUmo6Puq6K2oIuXsr5zKln4jf4ttrdDgyjSusGt2ISXxE
         GaDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Li3o+eGMse4pCU/GrJAq05vX5J9NsNX7XZC9vo43bFI=;
        b=GmVkWiNWz5HtgS+duqK98XRyCYy7UZ2K4w9TSFA5mYExbky9RQ7kBhU1kj4tPEX171
         +w+ZDamMQy+3mLGyRabW9Jn67OxTq0wLUJxUTn8RhGGDYQyOLlZ3mDOVqba4Ks1DrM/G
         Ptr6/q1+JPYuyVnoZi0HuMQJjiRy7baSeR5rkNOr24PgA/jrujQnrSWor9JanKyZKLzI
         SbXpa8JP1dlVKLk8LbjLzQwNdjzdmJl+lrkucCRCfmXFFYoid3fjzDd34UV2An3q1s3/
         YBX7BI1OmtIDLt5+tyL2Eo+lq1e6jps3jV7Uqb6nz1GbyyVZFa75y0iL0S8j1YV9z7UE
         Oq2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dVWGGx4E;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id o10si325541oic.1.2020.03.17.15.08.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2020 15:08:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id u12so12465319pgb.10
        for <clang-built-linux@googlegroups.com>; Tue, 17 Mar 2020 15:08:35 -0700 (PDT)
X-Received: by 2002:a63:4453:: with SMTP id t19mr1213740pgk.381.1584482914250;
 Tue, 17 Mar 2020 15:08:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200317211649.o4fzaxrzy6qxvz4f@google.com> <20200317215100.GC2459609@mini-arch.hsd1.ca.comcast.net>
 <20200317220136.srrt6rpxdjhptu23@google.com>
In-Reply-To: <20200317220136.srrt6rpxdjhptu23@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 17 Mar 2020 15:08:22 -0700
Message-ID: <CAKwvOd=gaX1CBTirziwK8MxQuERTqH65xMBHNzRXHR4uOTY4bw@mail.gmail.com>
Subject: Re: [PATCH bpf-next v5] bpf: Support llvm-objcopy and llvm-objdump
 for vmlinux BTF
To: Fangrui Song <maskray@google.com>
Cc: Stanislav Fomichev <sdf@fomichev.me>, bpf <bpf@vger.kernel.org>, 
	Networking <netdev@vger.kernel.org>, Andrii Nakryiko <andrii.nakryiko@gmail.com>, 
	Daniel Borkmann <daniel@iogearbox.net>, Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Stanislav Fomichev <sdf@google.com>, 
	"David S. Miller" <davem@davemloft.net>, Alexei Starovoitov <ast@kernel.org>, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dVWGGx4E;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Tue, Mar 17, 2020 at 3:01 PM Fangrui Song <maskray@google.com> wrote:
>
> On 2020-03-17, Stanislav Fomichev wrote:
> >Please keep small changelog here, for example:
> >
> >v5:
> >* rebased on top of bpfnext
>
> Thanks for the tip. Add them at the bottom?

"Below the fold" see this patch I just sent out:
https://lore.kernel.org/lkml/20200317215515.226917-1-ndesaulniers@google.com/T/#u
grep "Changes"

$ git format-patch -v2 HEAD~
$ vim 0001-...patch
<manually add changelog "below the fold">
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DgaX1CBTirziwK8MxQuERTqH65xMBHNzRXHR4uOTY4bw%40mail.gmail.com.
