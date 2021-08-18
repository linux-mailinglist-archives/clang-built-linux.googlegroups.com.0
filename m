Return-Path: <clang-built-linux+bncBDZYPUPHYEJBB44W62EAMGQEHKVQSZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF8D3F0E3D
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 00:36:36 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id d20-20020a05620a1414b02903d24f3e6540sf2834340qkj.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 15:36:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629326195; cv=pass;
        d=google.com; s=arc-20160816;
        b=X55Yuto++I6eXkVzf8xpmlI8vFHlIivcs/+eDN5GxuvhgCF3XoUf8Llnz2bewCd3ST
         1gDZIl/zCovxWU6YZpKhdiJnbevEx1bTVJ3C2qcT3C6sU8leTcqvQEFc9g9bwQRxDiW6
         Yo/XmU6AKoO4TUM4jNK3x/DSbiCqZTS9pL9jc9sFKjUVttO881P/IJOu2ZmQjbEdlDDO
         6BKL1kq63h/wsnTkgD0TO1TTVUKLQuAz5gT4/70Fi/OqjBdi91wc5YCj8YKgy0+ajNhU
         iad/KuOWOe+OvDy6RoBzF7G4dW9YgtTdF5FxghLwzclIIh5xlw6pA43YT+hm9Rr4VBas
         DePg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=D3zhKev8wW4Q5zM32aw5YyKEy678SGAAnVVQeeXtCR8=;
        b=lToF95a48gsOa4o0fEWIZrsLtR2aXO+uWA/JGuChirVnu1lnuo0w5wvXISHctCmOdD
         MqAoavm6eIe8EjsqsA7pqU1v4hT4kEEhxmrgXBrcmNqQImH9sbyWR3VWMOYApEbkf5MD
         jNjfv3qjUf3DQhiPX+pT/UwSlMI1rXTOMYZ1bDIdfW0Z38d4HieUCdslccWaFrmblPob
         uHhBfzjJKVMtlP1OT/CTBA6M6BDESzY8SqtvzOZzCoHVpw2J6QraxAzKu9fVNXvTA2MI
         qMuaj3YXhMQWrCx6sR9t0jdyli9Ou1u4BTEiK9p7+O6GqZyIgBxCYFnFEVmd0goVx15h
         4uYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel-com.20150623.gappssmtp.com header.s=20150623 header.b=zCeTW3J0;
       spf=pass (google.com: domain of dan.j.williams@intel.com designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=dan.j.williams@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D3zhKev8wW4Q5zM32aw5YyKEy678SGAAnVVQeeXtCR8=;
        b=CIsmo4JKhSRpysC6Vf2xTzTeZzg8Q7T20qYKwrUwxtNF12KNpfR4NxFDhdpLcWBDua
         VzFz8AZuUvFgj9qfU54qr6nxu02ejIOgM+bV2Z9PqjzIuNKg+OD+ON1u5UFfiP2etmBT
         +Uo8xTvWz6FB0R2K4gP0OySkRgGFVXAu1bbwk4IDiIWHXWQ1SChV9Emnk+OUlLpKxdCh
         ZP40Rvc59FMHryEFFOvuttIjurBEAC7N8LBIKe+mTQyvNasgCSoDw60Z39kysgXaQy7u
         e9A4jxeiC08Rs1BgrHC9VCehaXH+8qa2ZL4vTn5vGrMIgZNKyc/GWZKA/jjL3HPCDo/V
         hGUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D3zhKev8wW4Q5zM32aw5YyKEy678SGAAnVVQeeXtCR8=;
        b=TaskW9sZk2ricp4+my0O6ncZa6berrx+Jt5ZZQaU3DKds7d7kTuskNqzWg7z9Wln9e
         GjApF7b2JzVN6GTdiL8Hl0THZR4mjTnwTcxbeAi+pB7mIbmShNf/tolX699AGpy6AyDO
         EWZpZwqxCOuUndoVnsZd3BLGrcTnVA96QE6pt2J/Goiq61pe1GJ63I496Dq2QPLgv+JE
         kVk4oVA3Z6R/OwwEbQgYS23dcvKKAj0/LqEImzl6cOFhmeMnSLhUC0gSYTpkOenPvdRT
         zRj5JPX1/fHdSUZLn/ofU/XxsOUZemqgYutqq3wY4MN0x2JlZzwxpB2uePrvkGOV0QZN
         v1rQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530oWMTZNp1/faPmOq1QGbGGmVKcfIjMdEzebl4KeQy1WFEgnhnp
	s6eN4izwKwxCcpMJhYB7PlY=
X-Google-Smtp-Source: ABdhPJwRSn72guSK9gCe/qtswyWOg+ckOwwVvPW58yQNknTJBN4em9eVAx4v+5Ok0gduxitH1M35Vw==
X-Received: by 2002:a0c:8c0c:: with SMTP id n12mr11423982qvb.13.1629326195807;
        Wed, 18 Aug 2021 15:36:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:20e5:: with SMTP id 5ls242938qvk.10.gmail; Wed, 18
 Aug 2021 15:36:35 -0700 (PDT)
X-Received: by 2002:ad4:434f:: with SMTP id q15mr11487209qvs.46.1629326195256;
        Wed, 18 Aug 2021 15:36:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629326195; cv=none;
        d=google.com; s=arc-20160816;
        b=IoKFQWKmCXKj0k2KQ+/35zyS+QKyPWOLCSxzwqcTTKy4F30fjaGAKBkdUnD7sbi0Eo
         JXDgGbqR+mWpV46UBFW651eZkVpx28ij1kyuTurWOT3sXqLpn3BPwxxWXhOzVSH/4J75
         apudqfH80jiUEZBkurTPNl6P2+0q7Y9VDqqaeZ9SBUZqllNVYu5ld+bQ094HaSL9ff0Q
         hogheoUthiTGd8lq8JOwo/qbBNuaRczgj11/ePhR1JaN096LpwJjJ9YX+iqWNMSa5lR2
         6g0jAOuO6LCtbHIbm7VjHYmTEcOAxvILbH93kHVCXl4MwHKc0ilHBFkc9Gja3FFzOeQR
         0XDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2sMII5G/YrPb+0dkZspyZPS9+RZRKOtmg2+pJ+lOQh8=;
        b=v5k6gpzgYU1AM/LXln5iyrnFITdbKXZF1lywsWzaozGQm12WfwqZV1HBpMNX+c/rji
         qVFKidkuI5py5r8xESmNTZuJMBX4uWIsz6nsX1S60qyiulXCHboh1eN8sKuDJx23/Zzj
         WgvtezH+WC6P7nT4/jSb2mFsVYFhuM+CbLEyw+msBqmqfvh5MZobwWSeeQ3CPnM5JOUu
         2YDd69FZnmY++yXDKFV73DYaCkR6SBwksqTVhck8aMZ6MDZl09Btxh4T7FbRZDj+BtMg
         oTk9KJfmQBOLbNaKDAf3LJ5tdCT8DBxqmWx3//y/zyFoUzv9AuR29B3ibecf5cMbSe/U
         o69g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@intel-com.20150623.gappssmtp.com header.s=20150623 header.b=zCeTW3J0;
       spf=pass (google.com: domain of dan.j.williams@intel.com designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=dan.j.williams@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com. [2607:f8b0:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id t12si60458qtn.4.2021.08.18.15.36.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 15:36:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.j.williams@intel.com designates 2607:f8b0:4864:20::52c as permitted sender) client-ip=2607:f8b0:4864:20::52c;
Received: by mail-pg1-x52c.google.com with SMTP id r2so3886608pgl.10
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 15:36:35 -0700 (PDT)
X-Received: by 2002:a63:dd0e:: with SMTP id t14mr9405083pgg.279.1629326194463;
 Wed, 18 Aug 2021 15:36:34 -0700 (PDT)
MIME-Version: 1.0
References: <20210818060533.3569517-1-keescook@chromium.org> <20210818060533.3569517-7-keescook@chromium.org>
In-Reply-To: <20210818060533.3569517-7-keescook@chromium.org>
From: Dan Williams <dan.j.williams@intel.com>
Date: Wed, 18 Aug 2021 15:36:23 -0700
Message-ID: <CAPcyv4hZUOENLxUgqXrzpv0rhHp-TP_EkTaBKjvrsFLjy3-1Vw@mail.gmail.com>
Subject: Re: [PATCH v2 06/63] cxl/core: Replace unions with struct_group()
To: Kees Cook <keescook@chromium.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Alison Schofield <alison.schofield@intel.com>, Vishal Verma <vishal.l.verma@intel.com>, 
	Ira Weiny <ira.weiny@intel.com>, Ben Widawsky <ben.widawsky@intel.com>, linux-cxl@vger.kernel.org, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Andrew Morton <akpm@linux-foundation.org>, 
	Linux Wireless List <linux-wireless@vger.kernel.org>, Netdev <netdev@vger.kernel.org>, 
	Maling list - DRI developers <dri-devel@lists.freedesktop.org>, linux-staging@lists.linux.dev, 
	linux-block@vger.kernel.org, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dan.j.williams@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel-com.20150623.gappssmtp.com header.s=20150623
 header.b=zCeTW3J0;       spf=pass (google.com: domain of dan.j.williams@intel.com
 designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=dan.j.williams@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Tue, Aug 17, 2021 at 11:06 PM Kees Cook <keescook@chromium.org> wrote:
>
> Use the newly introduced struct_group_typed() macro to clean up the
> declaration of struct cxl_regs.
>
> Cc: Alison Schofield <alison.schofield@intel.com>
> Cc: Vishal Verma <vishal.l.verma@intel.com>
> Cc: Ira Weiny <ira.weiny@intel.com>
> Cc: Ben Widawsky <ben.widawsky@intel.com>
> Cc: linux-cxl@vger.kernel.org
> Suggested-by: Dan Williams <dan.j.williams@intel.com>

Looks good and tests ok here:

Reviewed-by: Dan Williams <dan.j.williams@intel.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAPcyv4hZUOENLxUgqXrzpv0rhHp-TP_EkTaBKjvrsFLjy3-1Vw%40mail.gmail.com.
