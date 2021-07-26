Return-Path: <clang-built-linux+bncBD66FMGZA4INBMP4Q4DBUBEZSX4DM@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id CD5153D6806
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Jul 2021 22:19:29 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id f22-20020a25b0960000b029055ed6ffbea6sf15353870ybj.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Jul 2021 13:19:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627330768; cv=pass;
        d=google.com; s=arc-20160816;
        b=FLun2SJbjwNnTLVedQkcEQo/1v4XHvlo86jmkrfdtaVcglxQqx3sNYTelVZ6VzNLQ0
         hq7m5VqqwdOwqh//U7xlzvfgxSf5SZ944HsN8UCY7bQZBihj3jbVA5TvkEXh+GB1ZIqE
         P9nHH1UQhKiJNi7jEBhbLJZxS3p1Rys6TWqVUJV2vyw+RB/wgId3o/Bdi+qYYlmak36X
         hurAJs3lnDgZToe4NjDthrqaW8W3XAqGGVhe8l6kjdnTh6VmN7BsjsQMWCBOfG+XhFxV
         wydwXaUjXU8/bfqlxtxZLsZaZi22vYm3+zp/iDqS4GyI4PoDe5QwMilgV5nGqN9K58YR
         Mj9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=SbIoT3Blnz6E4v/qlhJDQRD0GiXgxwWYVfui3n/ATjs=;
        b=klyGae3mpGkqSr6wmIqZ/gQOslZBaXHNqE8N5I9sZy/idhXJDR69jweQnK55WTWlzr
         T43lEyxqlheosJBHmKq9gdZiZJEtrCxMqxlRCRuNRQUOPSDpMOVLoKu1/ajkAzfGc7+h
         ZQkNvkntmJr+/SG/wfysimfjDFeMZ8N6oFkwu249oRONAbxsR7gTkjbj52oZzFVNUA/B
         JJ8mzyykWizJZlkhqqKGsOXxbpzrYUrgOEWf3surwx4GpRBXfm8/YABdP/DC/qj33jgT
         lEAdGPVicCtn0awMz4EyT2hd2wInzqRcdH4HkMtFoqfAkhohU3516b9TFhXt54jxvhdd
         4Arw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gJdCKTbk;
       spf=pass (google.com: domain of 3zxj_yaukeqwy03n0s00sxq.o0yoxmzs-n6ux5-xuz69s00sxqs30614.o0y@flex--morbo.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3zxj_YAUKEQwy03n0s00sxq.o0yoxmzs-n6ux5-xuz69s00sxqs30614.o0y@flex--morbo.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SbIoT3Blnz6E4v/qlhJDQRD0GiXgxwWYVfui3n/ATjs=;
        b=fyFMrnHr8+jx90kgfHdrHV9magtracb0dYxVysqVf+IHX3esexmzHOwm01MeZKFYCo
         RmbKbUc5jkBzWPsQQBjc8uYsc9/4betE0W1YiObgHDWJSxSVYcb54casKSNuRhUkh0ac
         BHsCb8I20mPDiQ0lZyGnq29EjA1v3QrnJVDqBWcwTvBJv7Ub/JOtdNziocSBRFCCPnMM
         A8BHOT0baH03vtzJfEWK6ZuaIZEWFSSm1qWy2wirkDR7Ku+iENJ+fYfYgPr2pOu1ZYnY
         jIsg8ZW6fpmpqKMmDLlMUlDBr9ppagTy5hHLLtUGbQDqM+tEqxzWOmUL8dadvmrnUKsW
         g6Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SbIoT3Blnz6E4v/qlhJDQRD0GiXgxwWYVfui3n/ATjs=;
        b=mjw7htRZK+UKcK4HCvqOlMub4X9KtWzfYmxOhONEP4pnXMHlg9sLdqaWqBJpjPR70P
         uPb0+S6I9auDIQ1xuNnZK35KyNQ7cixh7//ZOi824p8syPaNNZ5cnjvTgv1UoGmr475P
         /xUsSDtu/MnNxMaUGdOs9W22DHlp1MjIeEgZT2oTpakdpWZicXuq1t4qvKsRmlHRXHVZ
         oaQhdDV0WLcQOZRsHFh28HMvbJDGqorjOLCfI9kwru+aLnKKYRf0OhwzaIavfYLeqQKE
         L//up8CORKrdqWEi7aQiPxemptV6eA+yL8+N4Vm/PYHXqy5K74iNTocJesKyNymK4MGu
         E9aw==
X-Gm-Message-State: AOAM530ifX/lBfalnjDvN5HLupjZ4l5/N6t3c6JzIjdUTo2yOAneTvOv
	f2wDkG6If+K9MNArpvQnsVE=
X-Google-Smtp-Source: ABdhPJzOs6hQfNnk+9TWfcYLeswIG6aLghKrYDApM6BGEbqhq0sTX8U5a92yBe9A9oQ2VId6uXsi2g==
X-Received: by 2002:a25:6807:: with SMTP id d7mr26042151ybc.494.1627330768753;
        Mon, 26 Jul 2021 13:19:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:8748:: with SMTP id e8ls1551954ybn.3.gmail; Mon, 26 Jul
 2021 13:19:28 -0700 (PDT)
X-Received: by 2002:a25:ac90:: with SMTP id x16mr26078592ybi.316.1627330768249;
        Mon, 26 Jul 2021 13:19:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627330768; cv=none;
        d=google.com; s=arc-20160816;
        b=ehZPzfcsaazVWLFg8jh+4kt8+OfoyNA1I/UBhLm++csxR3fxstxJqHow98nX80+Ub+
         CeIpkKN9MKScI6Ku5ygx8Qp2q0iSIdo/WxszHHQ4+b3VOlTXAQ10sVgrh35uidxTropi
         6bYM0rBngftZb638Nke+tiAnPhxkN8AahtXq2jpoZN9xqK9MmHqqnlwxaIA2wpXnr7kI
         RolRQxA+JzOlI4lDlw1CkoEuYKAFz/LV0s/UZzprIHaaf+SYtnn3ygFGoHsOszWqwBUl
         7Gaboa9yWCYWqwDlOxJNrnWMZ0Uk63lHC+2zHbkbcx4Fl/dtJxzNjhe5bV03JJuTM0Mi
         051A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=GsN8HCqVh5N8aSJwsQzyNpefHB2pESiItXifSlAmSSM=;
        b=fnExkavTLlH3vC1wAAGhWWZf9M44inOldjGcUT19OiUFvmAGW5PS+5x0TfMF7p6Yk7
         sjbZ/r5rqyOMf80lFugMHavfqij2q6U8rxs2Zc8oJk38l58XkffkjYshoKBAOX2VsntP
         QgD5T5qfuqh/XRf3z/FhlvwDSSt25W5lLit7pQHgTy4Nb1vzobJjeZzvzo2CcYtpsLCB
         700yjNDfZmzNUkKszR8BYv1MW/gwuUrM5YSU9JOJnL1s03gnS0Qi1sAPz0OB1aCprSKg
         otExHtVA6RfQr6wm+ASfBziI+HyyD+8nD0RyDjDJkhEBgESBt9a5fs/XJS/g645F10e1
         /0kQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gJdCKTbk;
       spf=pass (google.com: domain of 3zxj_yaukeqwy03n0s00sxq.o0yoxmzs-n6ux5-xuz69s00sxqs30614.o0y@flex--morbo.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3zxj_YAUKEQwy03n0s00sxq.o0yoxmzs-n6ux5-xuz69s00sxqs30614.o0y@flex--morbo.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id o187si103990ybo.0.2021.07.26.13.19.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jul 2021 13:19:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3zxj_yaukeqwy03n0s00sxq.o0yoxmzs-n6ux5-xuz69s00sxqs30614.o0y@flex--morbo.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id n192-20020a25dac90000b029054c59edf217so15511318ybf.3
        for <clang-built-linux@googlegroups.com>; Mon, 26 Jul 2021 13:19:28 -0700 (PDT)
X-Received: from fawn.svl.corp.google.com ([2620:15c:2cd:202:ccf7:db54:b9d7:814f])
 (user=morbo job=sendgmr) by 2002:a25:ba10:: with SMTP id t16mr26601022ybg.87.1627330767966;
 Mon, 26 Jul 2021 13:19:27 -0700 (PDT)
Date: Mon, 26 Jul 2021 13:19:21 -0700
In-Reply-To: <20210714091747.2814370-1-morbo@google.com>
Message-Id: <20210726201924.3202278-1-morbo@google.com>
Mime-Version: 1.0
References: <20210714091747.2814370-1-morbo@google.com>
X-Mailer: git-send-email 2.32.0.432.gabb21c7263-goog
Subject: [PATCH v2 0/3] Fix clang -Wunused-but-set-variable warnings
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
	linux-scsi@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Ariel Elior <aelior@marvell.com>, Sudarsana Kalluru <skalluru@marvell.com>, 
	GR-everest-linux-l2@marvell.com, "David S . Miller" <davem@davemloft.net>, 
	Nilesh Javali <njavali@marvell.com>, GR-QLogic-Storage-Upstream@marvell.com, 
	"James E . J . Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen" <martin.petersen@oracle.com>
Cc: Bill Wendling <morbo@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gJdCKTbk;       spf=pass
 (google.com: domain of 3zxj_yaukeqwy03n0s00sxq.o0yoxmzs-n6ux5-xuz69s00sxqs30614.o0y@flex--morbo.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3zxj_YAUKEQwy03n0s00sxq.o0yoxmzs-n6ux5-xuz69s00sxqs30614.o0y@flex--morbo.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

These patches clean up warnings from clang's '-Wunused-but-set-variable' flag.

Changes for v2:
- Mark "no_warn" as "__maybe_unused" to avoid separate warning.

Bill Wendling (3):
  base: mark 'no_warn' as unused
  bnx2x: remove unused variable 'cur_data_offset'
  scsi: qla2xxx: remove unused variable 'status'

 drivers/base/module.c                             | 2 +-
 drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c | 6 ------
 drivers/scsi/qla2xxx/qla_nx.c                     | 2 --
 3 files changed, 1 insertion(+), 9 deletions(-)

-- 
2.32.0.432.gabb21c7263-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210726201924.3202278-1-morbo%40google.com.
