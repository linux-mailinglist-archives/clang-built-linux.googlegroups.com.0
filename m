Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4UNQX5QKGQENZJ5BKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8BA26B2FE
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 00:57:55 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id r193sf5130416ybc.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 15:57:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600210675; cv=pass;
        d=google.com; s=arc-20160816;
        b=m3dmw3v/oOprAxv7/2A0eItlyBJuXnvn5eYLPSyXrhYpX4s6NeNFLwxIREUH0ucH6c
         ghwiZiET8J6djLcEgpbBSJv50CitaYoN6FGGgnZEGuufk5mtEoVR/fFBaDYXOoyIwkOz
         XCUF7k3Ri93ryuXlMi/Ar5AIlck5tdm5mz5Mt3m2Yz+J6DAc7RNJQ9H/CrWyVoHe/zBw
         dOqUp6mwuSVBuCwyqZA/ZN/h4X9unvhUuqfyRGE3WS+zscXiqB51mkrkHgpuiz4BlUA0
         BxDQuDPyePTaHGk4wVI9thMWgRPtgPw8NeCnd8A3Mixi9teDdZWCMXTISffXgalhbh/k
         lXQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=PUXA4gcgJz5GJK1M7kZF5zXh0eHzHc48vNHLbOJXOzQ=;
        b=Dz9uL1t5Ur0VoEn/UAbSVVsRvCO7dtlMBfb/hpuDH7wU3aR4eBd/OVon8ikFj8tnUi
         9OzZW6VAPWbp4Q0RQvuXGKxPkFnOtmqF4RtZQOhre/TS9CKpxAxXSJ0hZnmSjspqjEnO
         z00MfJVJH9Y/xWsZiAOPn7twEl/LnKpHdiisdPMXYrFDIH/OMsMNDblGRLC5ErwCQAD1
         bGGnrABm3pL3Ty+q3VFt/55Z/7KX+mAJd6TnNfCNHHrOnHtDuKGGMxy9LzqY9sQpuHk4
         /MA8UwuSMR8nv2iAoSaLJvjwsiGqB2fKmAhQz8Ic+W2NQXH/msUhsH1MDjGoMIoFHxwA
         pifw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qyuZI04Z;
       spf=pass (google.com: domain of 38kzhxwwkaacuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=38kZhXwwKAAcuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PUXA4gcgJz5GJK1M7kZF5zXh0eHzHc48vNHLbOJXOzQ=;
        b=aGQTIW0IwzyL6AMrSly1tjb8fOgxRLeC0sFDvwc6AwlW388Oq4yc+9OBHgkjwYh7C3
         uDAIDNYXP7ylKhR+2QdHMwmO5rB61VIngZEjrbZTnDeTeWbZEjzSwDdHTqA0kOQ0WLPh
         +FZh6MljzilSH/Kw7UQpohS2kd2wosx0EQwfWO3g23ZLuJo8BfjisMQHWJecPLsum+PW
         K96EdNQtedKhCUaJiasQDPvWS93cxgOaI3+ROgh1fcKb4uNsJPAshXK7IXeLJw+ihSVW
         xHuNjSYwQDVs4v6tDoq2+cYbrfDeWwAUU5GM9HrzQk5cFCHBWMmFFurZuLmkHCuIEmdm
         Riig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PUXA4gcgJz5GJK1M7kZF5zXh0eHzHc48vNHLbOJXOzQ=;
        b=GQXUG8FTZoSRiYeUyXeQNBlKCwGZWVb0K9jtZkitiWSfwpvx+l7C22QXbAOjBfNSRB
         XI17WlDXEaCHCihGJYKZOM+0CrpOEq9+LcLtIeN9OUWKLIzHDHzYD2oHZKbhtsjZTS/S
         iy9bYqP79u9M5H50KzFStFCZ2daKbK4aMQo8eOZvw/6A813xTNRV74fbThwUOncxq8GS
         b3o8fZkK+sjvVHu/a3ZieSypb/WwH1MpHVupo4W0JtryRfNXDiSbl7yZBxgcTR46IKpd
         NIzo4IDAV3T/36x2vB+2DQTmhi2losf3MNggRX1nTZ4yYB4QWzcn1fLZUEBfi8nDA0IZ
         9xGg==
X-Gm-Message-State: AOAM530NjjoJp3u8FG32YaCdx8OqnGftR5q6ahKo5FVNnB8yqJ3sy3G2
	jp5KucKXb8n9UQk1ZX3b/zQ=
X-Google-Smtp-Source: ABdhPJyjQKeZTbbk8DBOoSzbFnOEuyjfq7mKnSPIdfk1PabxGNa71PpHVOKa/DkBzGneUeu6Z6HERw==
X-Received: by 2002:a25:414a:: with SMTP id o71mr2376452yba.470.1600210674982;
        Tue, 15 Sep 2020 15:57:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b29b:: with SMTP id k27ls74270ybj.11.gmail; Tue, 15 Sep
 2020 15:57:54 -0700 (PDT)
X-Received: by 2002:a25:2cd1:: with SMTP id s200mr31045176ybs.110.1600210674442;
        Tue, 15 Sep 2020 15:57:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600210674; cv=none;
        d=google.com; s=arc-20160816;
        b=stPQIkO5hGM3Vxu0j6EQYHut5zgetib83lzyYi5qRT37f3169zKSEBWJ/2FUBwcOD8
         AiVxUMO/ZVVu9yfiSt5sY9UhGYOroLoy45s9xgOL58GpMlkc9HmAkevvaUv13LQg0eh7
         NlWJA5h9PUtNpwlprQISdz80te9YR38Cyn2uchfyc4WtMLvUnXGCRzJMFhKzzck+ktAq
         eO4gZgRE8luAhS+gtW/mhLOBeNjt5//L7tDOB6hpXoR8XhcgBD08g/6bpvq3WG2pLxVb
         /N2EGROfzTR5pMNdfI8rpPMrCpmu4QLigurM7aNHFozAmmpzBJs+McE0dOIU25gkxqdy
         AfkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=GbEYlGiQU5dPzFhiYeMOq8enMUbU6ivz9OjjRiaMQaI=;
        b=pwEc7kAYBm6Fg8HrrEhYeHgGnvA6llsPrqPpryjZ5DIwSaCRPlP+WTmX8IaOcnYGzt
         WYPy7HI/cpJpJS1Dt+uLyFpM5MhIQfNRuGKvY4loFtRKNcnDLcMIloucVPp4xRtjfWss
         vCkMlCBRjxwMJ1+GVvqb5g+O0PrfkG+vB2+IWxRwD4VwiXQoy2psBfBHMaMeSozvmnxx
         Np4y6FAT6SbUdAsE0K6ZECE6OgIsUujJLEcH+WUFkdfxltnrkriH8CwnNSpuEiKOLhsS
         JJzTj/UvHBC56806K2S2gjEU9jHXHy63f1ohVTh8O2DzOwmd9tfhq4rr/RVyFsiNFMOw
         cayQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qyuZI04Z;
       spf=pass (google.com: domain of 38kzhxwwkaacuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=38kZhXwwKAAcuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id s69si456594ybc.4.2020.09.15.15.57.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Sep 2020 15:57:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of 38kzhxwwkaacuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id d15so1980961ybk.0
        for <clang-built-linux@googlegroups.com>; Tue, 15 Sep 2020 15:57:54 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:3453:: with SMTP id
 b80mr32029892yba.237.1600210674093; Tue, 15 Sep 2020 15:57:54 -0700 (PDT)
Date: Tue, 15 Sep 2020 15:57:50 -0700
Message-Id: <20200915225751.274531-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.618.gf4bc123cb7-goog
Subject: [PATCH] nfs: remove incorrect fallthrough label
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Trond Myklebust <trond.myklebust@hammerspace.com>, 
	Anna Schumaker <anna.schumaker@netapp.com>
Cc: "Gustavo A . R . Silva" <gustavo@embeddedor.com>, Joe Perches <joe@perches.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Miaohe Lin <linmiaohe@huawei.com>, Hongxiang Lou <louhongxiang@huawei.com>, 
	linux-nfs@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qyuZI04Z;       spf=pass
 (google.com: domain of 38kzhxwwkaacuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=38kZhXwwKAAcuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com;
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

There is no case after the default from which to fallthrough to. Clang
will error in this case (unhelpfully without context, see link below)
and GCC will with -Wswitch-unreachable.

The previous commit should have just removed the comment.

Fixes: 2a1390c95a69 ("nfs: Convert to use the preferred fallthrough macro")
Link: https://bugs.llvm.org/show_bug.cgi?id=47539
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 fs/nfs/super.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/fs/nfs/super.c b/fs/nfs/super.c
index d20326ee0475..7de4e0b03be0 100644
--- a/fs/nfs/super.c
+++ b/fs/nfs/super.c
@@ -889,7 +889,6 @@ static struct nfs_server *nfs_try_mount_request(struct fs_context *fc)
 		default:
 			if (rpcauth_get_gssinfo(flavor, &info) != 0)
 				continue;
-			fallthrough;
 		}
 		dfprintk(MOUNT, "NFS: attempting to use auth flavor %u\n", flavor);
 		ctx->selected_flavor = flavor;
-- 
2.28.0.618.gf4bc123cb7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200915225751.274531-1-ndesaulniers%40google.com.
