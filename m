Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSNNTH6QKGQERNA564Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 993FB2AA344
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Nov 2020 09:11:54 +0100 (CET)
Received: by mail-oi1-x239.google.com with SMTP id v126sf1847166oia.16
        for <lists+clang-built-linux@lfdr.de>; Sat, 07 Nov 2020 00:11:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604736713; cv=pass;
        d=google.com; s=arc-20160816;
        b=bQrf7Tby1wHWiFsfGX5O65MQ6Wkfyv953VDT26/xpWWhvMZ7auxKkH0VAsjU5eL84V
         Dh9/aRigjMDQqd36n2kJ+vq/GQHBFVcTPShu/8ohW1IYS5UvMcX9LsEs0/sh+31R1x4e
         JaK1EZcZUBijzX9IYqz4PZcnSe20xoM3OKWYrOTgUtrHK1hE2nh8gnUkx9UbOSXVW5AZ
         3JrRQDAHvA7Z9dsV+LdQsYGG7LatVpZTTYlFcgCz6Jsxq7Z/BvglR2yNnrWcJXm3E9r2
         gsO8njTYFLdGE4DgMVb57Hpv95nfjjzc2YKcrNZv6LCsO8o6FROSa6WF/c7Zkzd0h35b
         58ug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=Qm8sfybDxR/eRgLN67VqUEHOvdCEeEnKsTyOcTfU11w=;
        b=wEFJVJrYBtqWEACWps/3FSelPKbY7OvngTXHpu2yJTfYyGT4SVeEDiohTez80SWr6k
         QACO63mXROBOA5Je29eF4OJrqiUlECadbifPbWOzrDBUtfomz/mJ7cBUVo0DCtFQuuz6
         VLGjMPKjBJVsp540RiIGSA/sfehiVVnagmcWALoOnW0vdyfkZqtYgX5juuITVWhaoMTP
         k1ZJ7Ybx5R+SafVAyFxPRXOMpYIVxic4BDYzaPpq590gvdrfjcd4tboxQfw9bEc5w+wt
         SIalHtRqJFZLo+ZimihL1EopJqCDsD22J9+/yF3VDe9/w0IMIjS9GdfEx8ud+9OOjv7K
         0tjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=h9pkFZyL;
       spf=pass (google.com: domain of 3yfamxwwkabm6wxbtd461xabz77z4x.v75@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3yFamXwwKABM6wxBtD461xABz77z4x.v75@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qm8sfybDxR/eRgLN67VqUEHOvdCEeEnKsTyOcTfU11w=;
        b=XSTpuY3T6xYNt4UV8aga7aq26NnDk2TYRdeVJ6MslGsjHmZB6rHAJEtCf7daeMbSTM
         kZcGR34AILi6uLpogAtKSeWkE7qaGA2XRA2GZRNbHHplorNhT+UrnDW/XmD8xPkQ+ccW
         TNKdFganzG1HBgVDRHkdpBYR8D/D1IOSNLsRn8UZ3kLkfY4qqBwIN/w7wfD4Uch3+IQh
         Hbb1cSdCb1IEq5iIaUfyjUUGNbBePpv9yhP7IGjDuLryUouip7POYOjbASj3uQ74+1ah
         lOCD1ekDHARq9ETFkzEX4LKKfRY4nx7e24qCljCLUsLUPpv0vZjR06+iHk8OhPqug29/
         WOCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Qm8sfybDxR/eRgLN67VqUEHOvdCEeEnKsTyOcTfU11w=;
        b=jSsfNKwiS0OMtXGdy8dq7m4Tpt3n4nNDA+zp7QD0oqRxUZU7Idh/bQfEUZkrqB2877
         Mju74w5F4L3sMX3rUPVN3aZ4u2+ytj1FFRkUVutVT00Mk8bUszkx0eLoSuNqaVJr2gep
         jMsDk5RTeHcp1wE90waGB/OwTPgu2qWot+Dqb5VTzv69mjnaf3i+oTiOiS0LB21hneBm
         9+uL0emIn+NcRSEG8B+XzVc73RYuYSDN4nZN8LyLzAy6jQVZ0u7YM8N9npuEsaP0IT6n
         XZI/aVLgkLIJXAY14s7HKRY4QWdB08/y1nWZdDlqzfmDDQIJsgFhlgn+GgIUip8mkePK
         dvhQ==
X-Gm-Message-State: AOAM532WjdePXRcsa7rhhzvrduHG9hZ+QC26Vjt3XufcDxaeENKdkRkA
	i8DsLC46r2S4CsmUPBhGST8=
X-Google-Smtp-Source: ABdhPJwowjl5rfv3nP7k+ghoIt8KFSDyDmMkC5MQDOrHmyiuCIJgGXEvqy2/logmwI8SBQAJPmyaCA==
X-Received: by 2002:a4a:5a06:: with SMTP id v6mr3804301ooa.69.1604736713358;
        Sat, 07 Nov 2020 00:11:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:390b:: with SMTP id g11ls993426oia.1.gmail; Sat, 07 Nov
 2020 00:11:53 -0800 (PST)
X-Received: by 2002:aca:5885:: with SMTP id m127mr3549687oib.5.1604736713052;
        Sat, 07 Nov 2020 00:11:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604736713; cv=none;
        d=google.com; s=arc-20160816;
        b=FLkKBccX4jUlc/7JOcqm0cxVIvCCaUgYqLHExe/n4yg7Lvd6n/sY1XmKUzCESknjMl
         VNfV6dU/QYFWq4BrzuphossvEap+IKXELLbTbCTS0wcW5oyOgoOmzLwa6kpMO5B9DUAG
         9R0hXoSTXLc+ITSUItNbVHzlyvkAh9gBtezDwwOGTAQLAElKeQZP1NwK3M/dR/FBXQn3
         lCMLndAvwX18SaDiSuJWKwNudBWZoIygbkon1cRcVO5Rfy338Fd7J0Ny/x6WkDanIhbv
         BUcN+w8KtMlO0JlQEyWM5gWtDM4u7EAN6hXHNR1JlFWavIJld6/kGWLHHStG55Ti/Kwb
         5JnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=zIepqu5/kHd0BQ24VYrLjVuZ9zG/2BQ74NYjRDAUWZk=;
        b=EWNe90maanp4XSmZP6/PwYW31lD0GjRT5ZGqpes6v9vspCQ1qFTr8mjfhu6ykGhOV2
         gTbfNNmV5m3/84nU0IRFx61Sd+GiYzeaZbVeZ15srLqWkmGAvQoFsg4VnMZ/albHjjyh
         0Nc3bTUbgEGIao78kCQIvdqn4f5MTNjLnWNKcRi8lSPal9D2Bc7RIO1hqXmJhUDIX/47
         vNCspOqUgPsGhXlv4lblnAtxMr9deJLiQPmoxmfPzOgwOSzK/HFb6l4mtdA9kYVpjzDm
         R0XjZe3b8uzR4+ISP6XPlVAGsVu9xZj4Cf74vR/d6aezbcZmQMszZHPD+XeBZz5fimZM
         eSmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=h9pkFZyL;
       spf=pass (google.com: domain of 3yfamxwwkabm6wxbtd461xabz77z4x.v75@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3yFamXwwKABM6wxBtD461xABz77z4x.v75@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id r6si470013oth.4.2020.11.07.00.11.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Nov 2020 00:11:53 -0800 (PST)
Received-SPF: pass (google.com: domain of 3yfamxwwkabm6wxbtd461xabz77z4x.v75@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id 23so2881548pfp.21
        for <clang-built-linux@googlegroups.com>; Sat, 07 Nov 2020 00:11:53 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a17:90a:9dcb:: with SMTP id
 x11mr3322415pjv.132.1604736712313; Sat, 07 Nov 2020 00:11:52 -0800 (PST)
Date: Sat,  7 Nov 2020 00:11:32 -0800
Message-Id: <20201107081132.2629071-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.2.222.g5d2a92d10f8-goog
Subject: [PATCH] scsi: core: fix -Wformat
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: "James E . J . Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen" <martin.petersen@oracle.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=h9pkFZyL;       spf=pass
 (google.com: domain of 3yfamxwwkabm6wxbtd461xabz77z4x.v75@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3yFamXwwKABM6wxBtD461xABz77z4x.v75@flex--ndesaulniers.bounces.google.com;
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

Clang is more aggressive about -Wformat warnings when the format flag
specifies a type smaller than the parameter. Turns out, struct
Scsi_Host's member can_queue is actually an int. Fixes:

warning: format specifies type 'short' but the argument has type 'int'
[-Wformat]
shost_rd_attr(can_queue, "%hd\n");
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                          %d
Link: https://github.com/ClangBuiltLinux/linux/issues/378
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 drivers/scsi/scsi_sysfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/scsi_sysfs.c b/drivers/scsi/scsi_sysfs.c
index d6e344fa33ad..b6378c8ca783 100644
--- a/drivers/scsi/scsi_sysfs.c
+++ b/drivers/scsi/scsi_sysfs.c
@@ -370,7 +370,7 @@ static DEVICE_ATTR(eh_deadline, S_IRUGO | S_IWUSR, show_shost_eh_deadline, store
 
 shost_rd_attr(unique_id, "%u\n");
 shost_rd_attr(cmd_per_lun, "%hd\n");
-shost_rd_attr(can_queue, "%hd\n");
+shost_rd_attr(can_queue, "%d\n");
 shost_rd_attr(sg_tablesize, "%hu\n");
 shost_rd_attr(sg_prot_tablesize, "%hu\n");
 shost_rd_attr(unchecked_isa_dma, "%d\n");
-- 
2.29.2.222.g5d2a92d10f8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201107081132.2629071-1-ndesaulniers%40google.com.
