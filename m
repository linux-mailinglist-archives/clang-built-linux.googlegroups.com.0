Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBPP3RHZAKGQETLMYJSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3f.google.com (mail-yw1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A99158C71
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 11:11:12 +0100 (CET)
Received: by mail-yw1-xc3f.google.com with SMTP id c68sf8428765ywa.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 02:11:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581415869; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZBooun9YQ+GY4rIi0RK8O5ilizAusAq2AE67TTr26SeqVbFI//JqbbzGd+wsCRqZyN
         zmdOfa95VHD94kthoyHRmZkXtrWtKDg1n0hVfEf1blkvv88++oPo94EVaFqr8UGjprBB
         Fd1R/kbCsqQ2mcPOrpmLFUOp4rTcJOULRI/INXHXEPRV+QobW4Owl+BuPs1wN4OFk6HI
         JrXedyU2rQl/SENBQNNdGFCaYCOwNWxedADWXFCSVvUH4hv9QpUPt1Q72IiS16SoGzPM
         TVcqz3rj5nn1ik6gXGkOsQT0pYHknQYsgnMWI9hX4eiwCSXy0RhChNgQVbnYktAJsYSP
         r0EQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=eJ+sjYyzVsuM7FQRlsCjB2B63Z0CrA/Wc5+tvx/gkNw=;
        b=BPwWgEMpEn9aU3snrf572mff7pJHBF7tTv0wJIH3V8g3nQd+U4EGuLSg56QfFd+2Sf
         66bjSMfHGXXpncWVcJwPtWasz7N7eKAlpWXyTAPW4cljnsda48l6wvNpQe3XBPP+DbQ4
         0Gnnh/talUzOdFN7NNOL8Hu0o5/e1pWrnY6q4ZU7QFg0676yDUx00sjDlls+74YSTwfk
         bi3dAdG2mEu4CEc+8Wu9bQlgNHcwCYERrTtHl+xgDXLsF79urLRmqZ5oY+MAUfAIMuOG
         Qo9gse87ASvu7hVpPVO6ZHNNtH/brpWGKLM0VtxByytjQQGgtVgDII3VtiBdGB8eBHjJ
         vjmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="kg/BJIz0";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eJ+sjYyzVsuM7FQRlsCjB2B63Z0CrA/Wc5+tvx/gkNw=;
        b=fi6hQGPcP9p7gt3F5uOsextpxLQaBHiugvPXHOSehn2HUk3O1tGjNn1pgM9ndhXwxV
         cqqpDAfIUk+3EgoICVR2fG+ZNfRorDbK8TnK4t4JoyszZiDDUu37TV6I8gSZyJ1zsXhT
         Qblv0KNpy48GXqIBWI1HkWQVTCdcFoIeNJ8x/nHLQJeEG7xsVJXKsBLa1DZ2q3vI/d/M
         YhvmwYSvlOoMm1jhfVaQte+TsadG0N6KwVN0Vr5TKK9UGcV1/ssta9bLzlwLlexG8ieS
         um30GW/Ywt8PIgcjLtsgIK1zi1so/nj9pUApILbzHyCeaLqODYFZv7LucoryEiY4mneD
         PLug==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eJ+sjYyzVsuM7FQRlsCjB2B63Z0CrA/Wc5+tvx/gkNw=;
        b=RByl12FawRGSH177mr0dg/yGhsvFK0Im1cCuhR8lL+Z6MDUqErAEK6WEwvPfuryDbz
         rs+zVzhONrTG/RqqG9iT1RQ1ejQ4Ki5dWgZ9ZMr9XzqWH0Z5mwOrEizw0Q8M7z0bgLgq
         /hVU4opyEdNE0ICt9VV4lMGUVdGh/kZ8DtjUaHEo1jzYxJeFfsOBhab36rg729ug+bNR
         r7pzn7tX7SDBrtmYt6uyJzEa/02LHF5LTlfZuxY7qBfg/oJXd4w/doK2j+asD9xtM66u
         3XdGj6JWPdoz4pSJHSj4/Ml4q+WxT2BF+zCYPzY9VAr74SVQEzGCkH5XV5IKGvyU85oy
         jE4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eJ+sjYyzVsuM7FQRlsCjB2B63Z0CrA/Wc5+tvx/gkNw=;
        b=Ce8Mpa33Wy4ZVZ2L7dakdB0SA0NuI0kLq0aWnd/rsrcuhCBZzprhZceVh3ZuY1mhfo
         SzyjB8+2eVogj9KxuCtRAGZ6EHQKSDO4ZQjpTbC8ow+x36oHYW6EbHhxBZZqw/3sPzlb
         /o/75EqRVvYrw3cu+SIslLi6ZVYSrGvkpDNKwfwNmv55EXtrtFRaB2P7mso0FA1CQ4fu
         +8iJx50GlpsZS8OVDHE5GR59VgVqJFJNSs3jY21knqncA235g03xfSwTFDl8nsf6/u9Q
         cCgEPpRMUt+nEcnO5oS3+n7gSl5j6dSCcbYots+XuvE1Zp7al4WseYQf8vnd7oYFMZUI
         OFrw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWfEmk0nFf8V9NyjlM4PaT0rHP0pYsvjQg5fdjetAQZv3I/Utsb
	at8vIi5TUCT9sVhRz9cXrF8=
X-Google-Smtp-Source: APXvYqymxxomHtFnz4PXXjuiMITfbpoLjdGsEnhvws050rsNZB4hjBANijShFxH2k9WhaZ8OZYTGaA==
X-Received: by 2002:a25:7452:: with SMTP id p79mr5460718ybc.150.1581415869716;
        Tue, 11 Feb 2020 02:11:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d6d8:: with SMTP id n207ls2307913ybg.3.gmail; Tue, 11
 Feb 2020 02:11:09 -0800 (PST)
X-Received: by 2002:a5b:5cf:: with SMTP id w15mr5524579ybp.490.1581415869328;
        Tue, 11 Feb 2020 02:11:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581415869; cv=none;
        d=google.com; s=arc-20160816;
        b=T2HEpJ+G6PubqSQRKZg6/94EAVjW5MF5PnYbMwR3ivsWx5rZ+xAf6tRGj/V0USlQB1
         htyndZCtuF3YlatKfnETK2n6q9BvlHf+hlqlDv9JjWvd7J2GM8Fek7qdIMtzPlM6jYrb
         n1bU8VtaZHbgPhwMA3+t3hDK8g4i40sStEXgbmAt3t4PMHc+rEHxBnh7jSzAbmDH0Tsu
         S4L+oRIpBSm4/GdUQ9T7um7F6OcrmYJCnO5MCn4yvTqXHpj3wTUzWQnKEtJXR7K5qgVE
         aTPwjM/+rmHZe3RtlqmadY/8o4on7wLlHetdZZTRt4vxzRh9BRXhDBvJtlfik7pJEat3
         /nXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=rgUlxsqiSu2vVVhcNM1qto7++I4h6ivWidHx+BiGXeY=;
        b=TX3K/GbLP1ZwLUUPYJ7wJsqhey4AVxG2KmdcxPIPodyBrnve4QxnbZ8upMvgf3MRjW
         XC+Hvu+4FE+XtaV6EaHa4YpV8LaT/d+1kU3mHaI2d3g5OUAwNEBWDwm5ovV7ncaHWAqQ
         vgu+fu1RohbxEdulVSSHZQUP5LKe+zdjMY0sDy6mSL5o1Zc7eg6C2RnZOax3++8QyN0W
         2FkB0+z27Bkp6+oitwEaz6sxPzAr67Rpmt2fgWdwm/QrVdtxgsvY76js6k91vXcy5jCG
         zZ9hZHUdOJHcLGSKJ4eBUgFyZL1s9b1IbGhZhgQlQ+LdVgQzIkIYgLQqgK4nqmY+6N3D
         Zz9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="kg/BJIz0";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id s2si208072ybc.0.2020.02.11.02.11.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2020 02:11:09 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id t6so4083550plj.5
        for <clang-built-linux@googlegroups.com>; Tue, 11 Feb 2020 02:11:09 -0800 (PST)
X-Received: by 2002:a17:902:6ac3:: with SMTP id i3mr2457349plt.111.1581415868269;
        Tue, 11 Feb 2020 02:11:08 -0800 (PST)
Received: from Ryzen-7-3700X.localdomain ([192.200.24.85])
        by smtp.gmail.com with ESMTPSA id v9sm2429853pja.26.2020.02.11.02.11.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Feb 2020 02:11:07 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: clang-built-linux@googlegroups.com
Cc: Dmitry Vyukov <dvyukov@google.com>,
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH RFC 6/6] kbuild: Enable -Wtautological-compare
Date: Tue, 11 Feb 2020 03:10:43 -0700
Message-Id: <20200211101043.3910-7-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200211101043.3910-1-natechancellor@gmail.com>
References: <20200211101043.3910-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="kg/BJIz0";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Type: text/plain; charset="UTF-8"
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

Currently, we disable -Wtautological-compare, which in turn disables a
bunch of more specific tautological comparison warnings that are useful
for the kernel (see the Twitter link below).

-Wtautological-constant-out-of-range-compare is kept disabled because
there are places in the kernel where a constant can change based on the
kernel configuration; these are not fixed in a clean/concise way and
they are harmless so this warning is kept disabled.

Link: https://github.com/ClangBuiltLinux/linux/issues/488
Link: http://releases.llvm.org/9.0.0/tools/clang/docs/DiagnosticsReference.html#wtautological-compare
Link: https://twitter.com/dvyukov/status/1186666563522445312
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 Makefile | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index 84b71845c43f..9b8f40467a76 100644
--- a/Makefile
+++ b/Makefile
@@ -741,8 +741,7 @@ ifdef CONFIG_CC_IS_CLANG
 KBUILD_CPPFLAGS += -Qunused-arguments
 KBUILD_CFLAGS += -Wno-format-invalid-specifier
 KBUILD_CFLAGS += -Wno-gnu
-# Quiet clang warning: comparison of unsigned expression < 0 is always false
-KBUILD_CFLAGS += -Wno-tautological-compare
+KBUILD_CFLAGS += -Wno-tautological-constant-out-of-range-compare
 # CLANG uses a _MergedGlobals as optimization, but this breaks modpost, as the
 # source of a reference will be _MergedGlobals and not on of the whitelisted names.
 # See modpost pattern 2
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200211101043.3910-7-natechancellor%40gmail.com.
