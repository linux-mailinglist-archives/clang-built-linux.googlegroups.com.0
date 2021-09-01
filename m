Return-Path: <clang-built-linux+bncBCLI747UVAFRBOEIX2EQMGQE7XRIWAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E5A3FDD43
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Sep 2021 15:46:34 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id j9-20020a2581490000b02905897d81c63fsf3245439ybm.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Sep 2021 06:46:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630503993; cv=pass;
        d=google.com; s=arc-20160816;
        b=QGVG7HXato1MG613PFFH64fchhPwhS4zG44o3B44yUrULcpKayIQDL37MZjca0BS1w
         0OnbARfn5HEVPaiUrluaIkudkVXEsitNERYUOGBdCW4cPreBg2coGuVvLwTlc70phQE+
         nAb7fOnNziNdRNFWdVGN5udtbDb0fPFm10O60Tp9SKKVGs+hApbDiH62kIIFVp5YaIDg
         WNZdAGE5UsfZ9HW7XzN6Tgb+4glsQWFIhirnhEoSi81PusgJWgSXXPCemfB1EFgEqcQy
         p1ujwCsZ9wuN64VJx0XoZDo2QNh9LhXNuFeBBPjlUMY/RB/P7eVv/ghQciRas7V6Gx7m
         N7iA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=H0WKJVNXdhL51fBXwWBg67DkgSpq9Gzg2amLPuDgEbg=;
        b=u5IFMzAjg0GPA9tE8X8oKCtevKw80JsqN5olGM/y0aukkpvLlx7/ttCLTp1DBVO8Bq
         yk8o3KWAN/Hp+yPaGCTzTj6gUlB6X6n1/iuu5LGqxvwFXXXKm/yi1UNyUy2ptPoZWA32
         lyTuP1v1CmnZs+Sc/rKPoEByClGeYFPzoMJkDtIAbrBKZnfGyls8xW5o/vvxy7BsgoJK
         S9JNDHKMTEt38v95Iyf8wY3jzWcE7orR95yNtsi6+cyBP8ckRWFacUSMUuQCAkzEO8H8
         AzxkAftisfvx/dYdrbjzNT0VfcJRvkHCILdY1dPEYFPgQA6DMf3GE8yqISjdsM3+oKiZ
         TBUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=20210105 header.b=SGQQH3Jo;
       spf=pass (google.com: domain of jason@zx2c4.com designates 104.131.123.232 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H0WKJVNXdhL51fBXwWBg67DkgSpq9Gzg2amLPuDgEbg=;
        b=K8HKEha/0F5vjfUaN3QpIHygol2nzfk/BYD4a4HOLD5iHKEkiFOQPBSAFyWTH6zAI+
         48eCwd5vV5Ftk8S1PlaPP6BoLWK/0hHtkQ20pTcUSiL654Wv/a1jv4r9W2n7a7jj9tLN
         5gvEHvQoNgxBqf8HG7cRD6FCMF0j0KIt654kIDD+IHl3BnzAxeAONyv1DmOzwgQKGwEQ
         v+omrpXeXxyP0cGWZQcjovyIgw9sGc2BNhv8Zqjl5jaFJT7pECtEobsrq27t3XHaODeF
         QqUzyVmvYO+xz5gtMe1KqunFjyOUr7G4QI3o1drO2301NjYMXqQXO3O6airqYNXePAet
         +Flg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H0WKJVNXdhL51fBXwWBg67DkgSpq9Gzg2amLPuDgEbg=;
        b=sM9u5+zC/mq/RQKFoiffD80wqiUwNrziE2d3IHqts/ry229xnQ2q/JxeU7GBRLXeoX
         qHZd7c7vo2FG1oQlK33oXVA4cX7X+yTg9J9wesTnwak2ZT2c4C38cFFCW9sw0wGhEcqk
         1q1bimolJiVWOJ8E5joeFkj6VYWrRdGdDY/POR21zOwVFjXGpQDXJtTuYdfo1APZ7eTC
         +NPEUzTrSSGqyQSdao5gdKoHcYJ/OlMVF6V6io/dIjB3X/4kyuOo5vHuj/1ShgA0O86L
         XPEww46vCDj/vpkTMLCLxPU4Jj6OGqOimiFPNpw8oSU0hykPMwtbChgY3EU1bafJK47t
         Rsuw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531g3qpw/6HbZkWrc4EJX7B8cKD4b7CeTA4r/iTwkrus+/zn1BNY
	OI4/H09edTRQf5xELhLmIlk=
X-Google-Smtp-Source: ABdhPJz0y4F7YTjLoBaJjkFv6ZlmGVnqAYmyCG5q5l73qO8eLxT3YzQKLXw6uPqVQtXEeW3RGdx4Jw==
X-Received: by 2002:a25:5386:: with SMTP id h128mr37596846ybb.475.1630503992934;
        Wed, 01 Sep 2021 06:46:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b981:: with SMTP id r1ls1258643ybg.8.gmail; Wed, 01 Sep
 2021 06:46:32 -0700 (PDT)
X-Received: by 2002:a25:ba83:: with SMTP id s3mr36762164ybg.450.1630503992405;
        Wed, 01 Sep 2021 06:46:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630503992; cv=none;
        d=google.com; s=arc-20160816;
        b=PVhgx8ySmoA11yJe1i+HJ8XnfIsXBm9pwYJHzAObE31iJJs5KkCvNt659Emzz8UR08
         /ADsJWWG/BeuKp6HkqWrMMeBQ3xXJCM0/OZzgsBCDXMDwFuBECoAc8Qc3Qm+PJBJCpFK
         7V9H/HzGNQcrSkdt5STYmdsNk/tpRAB8DUF9UrVOV9AcrqO/XPb/Ds56Z35+z3YCv9Yv
         ++I71C2z3Ao55r7FySokyxcn+dGlr+GjjXLVtsN44lJbWxZgkEuJoNFTBB9633aXp8KA
         WBkvXyymaeenqlWLhd2TC/Ii6SJ9dYTbhT9NQnC7DWQrKmjATvXEzx2+Ue3Wlz3g1EXP
         XeuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oEJ7+xDrfegvHPd4H20eNZprosFZd2jsqVEjo8Jcnxw=;
        b=IyG7Gh8mxPiC+Gly+iAAr1H0/ya4KvfujAAGO7yI1mFc+YZ72AfA+0jjBg+8LdmV82
         q99EsTmyFXuiL2uKgyHmk4ngRmJrxBjvg5/8PHMNEYUZ1CNh8pYYje7kwpnkA0W34CXO
         0hqGTa9W+9UfBllxRWQG5IGF/cSeIBUtwY76+se4jRvXnFLI0/XWAwaWf5LlOFSQXF1U
         rdMtcKSRLmJqyKAWNMU7NKFYa5X/mDWJIIhibQxokLvfZiusLOnIRh06haGVTy1NbyRG
         jWGMRmbWBwdYWzmSdJ+gGFNBM1XNIvM6/2HDvyu+pZgIVd6TgxMqR9H7D/kIFyhf+a/9
         BClA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=20210105 header.b=SGQQH3Jo;
       spf=pass (google.com: domain of jason@zx2c4.com designates 104.131.123.232 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
Received: from mail.zx2c4.com (mail.zx2c4.com. [104.131.123.232])
        by gmr-mx.google.com with ESMTPS id u17si1422ybc.5.2021.09.01.06.46.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Sep 2021 06:46:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@zx2c4.com designates 104.131.123.232 as permitted sender) client-ip=104.131.123.232;
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id c7477b7c (TLSv1.3:AEAD-AES256-GCM-SHA384:256:NO)
	for <clang-built-linux@googlegroups.com>;
	Wed, 1 Sep 2021 13:46:28 +0000 (UTC)
Received: by mail-yb1-f176.google.com with SMTP id z5so5250826ybj.2
        for <clang-built-linux@googlegroups.com>; Wed, 01 Sep 2021 06:46:28 -0700 (PDT)
X-Received: by 2002:a25:4589:: with SMTP id s131mr1779731yba.279.1630503985074;
 Wed, 01 Sep 2021 06:46:25 -0700 (PDT)
MIME-Version: 1.0
References: <20210818060533.3569517-1-keescook@chromium.org> <20210818060533.3569517-8-keescook@chromium.org>
In-Reply-To: <20210818060533.3569517-8-keescook@chromium.org>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Wed, 1 Sep 2021 15:46:14 +0200
X-Gmail-Original-Message-ID: <CAHmME9pmXsfgiavSrv6+Eh8C0qrfuYRoQoLvT5EQZz4OdZj=Ww@mail.gmail.com>
Message-ID: <CAHmME9pmXsfgiavSrv6+Eh8C0qrfuYRoQoLvT5EQZz4OdZj=Ww@mail.gmail.com>
Subject: Re: [PATCH v2 07/63] skbuff: Switch structure bounds to struct_group()
To: Kees Cook <keescook@chromium.org>
Cc: LKML <linux-kernel@vger.kernel.org>, "David S. Miller" <davem@davemloft.net>, 
	Jakub Kicinski <kuba@kernel.org>, Jonathan Lemon <jonathan.lemon@gmail.com>, 
	Alexander Lobakin <alobakin@pm.me>, Jakub Sitnicki <jakub@cloudflare.com>, Marco Elver <elver@google.com>, 
	Willem de Bruijn <willemb@google.com>, WireGuard mailing list <wireguard@lists.zx2c4.com>, 
	Netdev <netdev@vger.kernel.org>, "Gustavo A . R . Silva" <gustavoars@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Andrew Morton <akpm@linux-foundation.org>, 
	linux-wireless <linux-wireless@vger.kernel.org>, 
	dri-devel <dri-devel@lists.freedesktop.org>, linux-staging@lists.linux.dev, 
	linux-block@vger.kernel.org, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jason@zx2c4.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@zx2c4.com header.s=20210105 header.b=SGQQH3Jo;       spf=pass
 (google.com: domain of jason@zx2c4.com designates 104.131.123.232 as
 permitted sender) smtp.mailfrom=Jason@zx2c4.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=zx2c4.com
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

For the drivers/net/wireguard part,

Reviewed-by: Jason A. Donenfeld <Jason@zx2c4.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHmME9pmXsfgiavSrv6%2BEh8C0qrfuYRoQoLvT5EQZz4OdZj%3DWw%40mail.gmail.com.
