Return-Path: <clang-built-linux+bncBD66FMGZA4IMNV52Q4DBUBFTTCLNW@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E26A3C8144
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 11:17:59 +0200 (CEST)
Received: by mail-vs1-xe40.google.com with SMTP id y129-20020a677d870000b029026b5893c4aasf814795vsc.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 02:17:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626254278; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jn/OC3YMmXSjB05FwwnHQ3To4Tt9HTN8LwgjawcB3DiZtBxt1vwthHE3m1rWrq+f59
         DE2AeiSdsZ7c2dtry8BYuSo7CiUWJGEq6D9uy9IXrr5R+05XpzGXp+m6eeh/RDtLZH5l
         kj3sx8INmZSqtIQ0UMR9FcKvRFmNSBe4NDhKUgoC9mCWoqmM7alAwKkrD4td4lrTqguz
         9tGNgWb59+eUpLcyG6Y0ClIgXdPZ8eejzYIt7Kpycc6sN2K5DbsCoH20oRrcaoblayjp
         b6+SgHO53ouo9ZZD2dEUBl/xbocYPIRQye7YORhJ0Sz/CTcmO9nVsnLzfreLjuq+3HB7
         7+7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=DzA68CVHa9FSkcwYnVdnlfLpCIize0slpA6qfeWo3Bw=;
        b=RVHSVPWY57fzMGXSVRXFawX9/WqGMbHrCYJ7YRg3cgB7dWXwfE50ygbS+eYnDnEE5K
         Y3+NSXD4FqTTw5SA01Fe8llOFiVNl6lxD2GE7feeERWtmv6rgYCHAU8m1X7a1QfrUxYj
         KGvoLBowu3NLsqw0nB1JO63PAVAZI/cQMUZUtv4pB88tsQzEcBcVEI9r6rs0vEXaDR4r
         wWN2it2LcY5Bwme2HzsdijIYUFdJi7dd0pVVPspW8lX/dNMOZF6HmNOiP1GLWrNlRKjm
         5Smx2rA+aGypVC7w6OVo5uGNjSW6KJh8TbkLDoAItGh5VIxmPCOytxOmGCby3wOC602i
         L/Sw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=P1U+2qmK;
       spf=pass (google.com: domain of 3xavuyaukeeqsuxhumuumrk.iusirgtm-haorz-rotadmuumrkmxuavy.ius@flex--morbo.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3xavuYAUKEeQSUXHUMUUMRK.IUSIRGTM-HaORZ-ROTadMUUMRKMXUaVY.IUS@flex--morbo.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=DzA68CVHa9FSkcwYnVdnlfLpCIize0slpA6qfeWo3Bw=;
        b=cXdG0Kk0t0vUbk57jGJblvZEuB4TCTDh+8AReIHNTyvihk87DlQl/YkgOA2x3AgB0F
         GEQVmadgi2lo6jtG50/mQpFTIAJfJkVLJhh01XN8on7gGHH1F3Ev8nnQlF6TFhQwUcqL
         wfW5LM7CnWHd6HZtOMNngF5myHqDuhEgdfnKAHm7AcC16U2XiRA6EWL0tU48J7KzZc4x
         OwtIhJoVfr++X1pz35TUMFOZoK2AeMenf1ZpyE2yTqezwXdQ7OQZtxMNrIq8lTaxDHFA
         Jec1b6LtouqV9m6hWv9qyK3RHkw8w19KR+jEfKJLpvXBY/sukWME7v/IYvOTz1y+6IZh
         /wSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DzA68CVHa9FSkcwYnVdnlfLpCIize0slpA6qfeWo3Bw=;
        b=An/9qv/UTtb170ZbcwpPCq42Bhngwa5fB6D7D2IJCXnE6u19A+IqPgVGqld9EgEZvs
         yaN8gdOqIB2EmvZqR4DIVknmGB4cq5/rU9eQe5Lf44AeW3ODd9jH1wukV/7ztO4qrG6y
         6zExc5FiADPMkDwGCgHK550OSuU8IpRD1CN/jbtLw/27LBY5jkdjLYgeZGiEm6Rp+HTU
         xe3uqlnZ9oweWTj5F108JAVCctux67PoXgjmjOi9Q6pRCSu06nifalrjZMMvdkR81ILk
         MgXp3qOlt14Gpk7/jOdd+SSpDAuI2YpgdOt/W1cVVsosyWwelGg+yeWBC2QYAwRwo9Ey
         oaAg==
X-Gm-Message-State: AOAM533y78Got2xPiei1WH28ZHZ3G5/O0J4BYacpaqpb2EyHEK3CS9Gu
	QKmbTlQMd1NwxJJTyNPHDG4=
X-Google-Smtp-Source: ABdhPJzbT0SGzNV7ERr9DA4hQzrx06L26zrOV2X03AyRJ45EMMQyAn6DjwFhUIzQf51j8UQE/MlO4Q==
X-Received: by 2002:ab0:2491:: with SMTP id i17mr12508680uan.109.1626254278275;
        Wed, 14 Jul 2021 02:17:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:dd46:: with SMTP id u67ls240430vkg.3.gmail; Wed, 14 Jul
 2021 02:17:57 -0700 (PDT)
X-Received: by 2002:a1f:5747:: with SMTP id l68mr10676452vkb.24.1626254277845;
        Wed, 14 Jul 2021 02:17:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626254277; cv=none;
        d=google.com; s=arc-20160816;
        b=aJIsr3VMY+sJuQq/OAZuGpJFbASX5LItXwijXb0eG8T4I8Ctt19F/brm6+ogHQJNE2
         ran6VbniPzT2WdXkAyCNJxpjdfwU5kfQCqB8E41mkwqxLhFNakVfU3fTVa9Q3LCXR6e/
         Aw/hqSRZpgAspmsvrQ1H0tsJG6oc3otO5ViFtEk94YwO0j1X9ZfYfNib8WPHGg12IaXL
         prAkXgqysfOr5it+Tku0KGjo4xPhb2ohQQjDR8tkFrpqS6KfDKO6YIQGzuHPGN2GZVy8
         mrAcWF9NVMcJNjNcmyjsVDVqQKKcoMBWMGQMlWWp/+nnzIz0iVb0T+JTItNJOMLZVO37
         Vyfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=wlrejQF48WL4uSnd99LoOFS/aI1Cbh+kk7n1cuLb8Cw=;
        b=gGRPl86kyW7EAyeGCjE1NPaW9WJi0lSVnUUkYG9jyHyCFfd2I1asVMdEHT6Hlei8W6
         syIgxad3J3EbhcOKHlSSccAhF3I2vUEhqSOfaguuiHIodTfULnXWIDvk2jx4URqSxdJp
         ilzkYrKftvRsfTYqQ8QGgflTPrh87Z+gryeJB8p5En1XYCy+qRbB1S0Fjbrf7KKQKfh8
         iiC5Hp0gwlZleE8BuOLp1wu0US0AWrvOTRqwYa/iqzz/XY3jfc5tcBk2zHsP1jY6ViG7
         BBwFM2Q77/642XgjbRFO+GqrGK37AoSBXECp3ng1BQCvhP1k+xZnyJcjtHf8nKMMqUOZ
         fMjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=P1U+2qmK;
       spf=pass (google.com: domain of 3xavuyaukeeqsuxhumuumrk.iusirgtm-haorz-rotadmuumrkmxuavy.ius@flex--morbo.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3xavuYAUKEeQSUXHUMUUMRK.IUSIRGTM-HaORZ-ROTadMUUMRKMXUaVY.IUS@flex--morbo.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id f4si218213uap.1.2021.07.14.02.17.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jul 2021 02:17:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3xavuyaukeeqsuxhumuumrk.iusirgtm-haorz-rotadmuumrkmxuavy.ius@flex--morbo.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id k11-20020a056902070bb029055a2303fc2dso1802240ybt.11
        for <clang-built-linux@googlegroups.com>; Wed, 14 Jul 2021 02:17:57 -0700 (PDT)
X-Received: from fawn.svl.corp.google.com ([2620:15c:2cd:202:c569:463c:c488:ac2])
 (user=morbo job=sendgmr) by 2002:a25:764b:: with SMTP id r72mr12013800ybc.254.1626254277400;
 Wed, 14 Jul 2021 02:17:57 -0700 (PDT)
Date: Wed, 14 Jul 2021 02:17:44 -0700
Message-Id: <20210714091747.2814370-1-morbo@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.32.0.93.g670b81a890-goog
Subject: [PATCH 0/3] Fix clang -Wunused-but-set-variable warnings
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
 header.i=@google.com header.s=20161025 header.b=P1U+2qmK;       spf=pass
 (google.com: domain of 3xavuyaukeeqsuxhumuumrk.iusirgtm-haorz-rotadmuumrkmxuavy.ius@flex--morbo.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3xavuYAUKEeQSUXHUMUUMRK.IUSIRGTM-HaORZ-ROTadMUUMRKMXUaVY.IUS@flex--morbo.bounces.google.com;
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

Bill Wendling (3):
  base: remove unused variable 'no_warn'
  bnx2x: remove unused variable 'cur_data_offset'
  scsi: qla2xxx: remove unused variable 'status'

 drivers/base/module.c                             | 6 ++----
 drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c | 6 ------
 drivers/scsi/qla2xxx/qla_nx.c                     | 2 --
 3 files changed, 2 insertions(+), 12 deletions(-)

-- 
2.32.0.93.g670b81a890-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210714091747.2814370-1-morbo%40google.com.
