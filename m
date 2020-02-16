Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBFM7ULZAKGQEQBDBDRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id B818716013E
	for <lists+clang-built-linux@lfdr.de>; Sun, 16 Feb 2020 01:40:54 +0100 (CET)
Received: by mail-ua1-x93e.google.com with SMTP id m2sf2880739ual.15
        for <lists+clang-built-linux@lfdr.de>; Sat, 15 Feb 2020 16:40:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581813653; cv=pass;
        d=google.com; s=arc-20160816;
        b=W/Oc/dr5coEIlSEqQNYYHwZrh6S8G4UC3Hxeu6SbHlKkqOcx4qwCPs5j3RJ+AD8gwy
         t579GDuOMo+sjx44fIWg1C9atPSSE2TmqcWJtkPhP5NmHRMnC/MU/75a/7PAAMZUs7ux
         TMBfPxv7tFkS/sVRu/HVdGPAB0VuVUQWQ1N7M5Fwza0hyn11yhY2ZruqjvKkjBTRt+tC
         ALabOJuPy6aeTRFsZ9y3AeAdsDx5EnWXnqKqdPCnz41p35xevM78t9LnHiF2D+jDiC9V
         H+bBBXbTRPCmO987TvtlJqi/E9H0Fayj2ykm3IVprqkbIgCg/hvTee8a2rAFpaIIT9j/
         jHxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=/SUJX6TYErJOraj3lKLIGRi9okqCv8hYSHPC50hqCZQ=;
        b=Sfz5XNaqUBvw9PSEB1o0F8FqQOqXhC0D+7NEZKWwCQUpXuKMlyRkrI0khEJxlbQEv8
         TOn4SW6YaA+cSHMpPryBqb0eY5mr+UT8CFZ5FenJv97yomZxyEum8zxIch6MTpJWsZst
         y7B8UrqHeebI7Hsjc0ztjLdzTDaDiHdfMpLPOOs5EI7iIaQeeLCmvSUR7kEldD7aQMFM
         0af4dGz+NKSkgaEITsA74QxbJnF7j7NFyj2bx0fUE8fpAWcV0QC0ixiDewOp6iVGgqpH
         PEihCRsRmiNL+4lPXIVhM2m2QnJuLvjrn5+IdcAfKyRjYhF3pXvIlWYYLPOlOjYwNqJP
         jC/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="hWX56Dh/";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/SUJX6TYErJOraj3lKLIGRi9okqCv8hYSHPC50hqCZQ=;
        b=ViNDfpwL8JLcQAy+iE0BYmI1h4EW3eaUxYGJjagufhUemd3wa1u4RfXlh4njf8wbU3
         JETfC7g2I+G9FIcnS9dJB6fxjDR3LrwlIxSOvz6HEp3a0Z/bzFVskg2JMW+qUfJdfVov
         ZBNgFUy9bE8JE4kTJ2Y96c93uj8BTKwQfWAl8JIdrh3zqlRbHSJydHOSRWi3wmpFHy2v
         S05q5QdjV4RhP8DYL0ZwhKndfzNbcqss9jGIYcAYEjUQs4l7qHN3tcD5aDndgdvYIh8r
         aMxlQ8Flt1ZlhvWkFf82wzhqfnIfMpLNphatrxvHac6Dwbvfdlpe9P7vIzjsUWRNGy4+
         rw2Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/SUJX6TYErJOraj3lKLIGRi9okqCv8hYSHPC50hqCZQ=;
        b=veC2l/iSeHNb8J1XfZyhHTpTSylBTxk7Gpd8bBaaCaM9ZLJIq0ZIWmbKGHWnVpGS2c
         grWxqsfZ3LT1/GyeBVEz1NKWjVSDwIi5ptjeKXqw8dri1nnzKYR72uq9J9PzqL2VA3bg
         FyU4gj7W0EFTwZKCjMRMpeyrI3BogbKxhEBdJVFB+5Is+lTEHXiWw2k5KK1P73Fs35/c
         gKDaic4Xlm0eFg/OxD+u+TQlXnlGuRZ3rIfEkYvRN5aVKH4375YPYubgbjnCD2LjOdmT
         Izx6+QuzV9x/TerA8cdsmntHqACr8mcydICiBXd+4I2QARh139G/7kkm75Kq539teZ1U
         hzBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/SUJX6TYErJOraj3lKLIGRi9okqCv8hYSHPC50hqCZQ=;
        b=mHLbg8HjvyAwP2FZRFdkXcBPgvlmbg0IKHIYVPZ457E1NE7zqmYkEg4MTm84Ex2XjW
         tlpQn00Gcqh8shACIG+rfCretO/EUk82Sz8LDKF1vC8gD46bxjivk6fzH8NYOFEs/0xQ
         DCwoi/KSyCXskYSbDNXVtknTMQ3AyvguXSFiuMYUqkhHzjUMlt1Z2F7b6Bv7CuW88ElT
         Z1uEHORzW44MboSxqlnPlDKwyOTJThOL57GXxn7BdfrSG/3NtCVYElcxSfrX/NsO6Asa
         xkAbGrJ3kvpzZhkbwuYakqh0i0Vo57Zp37e173Lsz6IEdq2yj3sda1+r6FfXt1r4Pauv
         hxIQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVJpAN2DmqqiCqZOA/cIPlhBOM1QQKYkbj1dQkgFYEtTXJRanz6
	/e4sxesRCP2aRmsyF6Zw92A=
X-Google-Smtp-Source: APXvYqzF07GQoIdqLSZATvWVyN8f7QKEDOhBZCkaL3yiWEiI28qQb720z6ztIVxPvHuzc8RS+clWHg==
X-Received: by 2002:a05:6122:2b6:: with SMTP id 22mr2555045vkq.49.1581813653532;
        Sat, 15 Feb 2020 16:40:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:1f83:: with SMTP id f125ls300968vkf.3.gmail; Sat, 15 Feb
 2020 16:40:53 -0800 (PST)
X-Received: by 2002:a1f:4d85:: with SMTP id a127mr2701528vkb.67.1581813653158;
        Sat, 15 Feb 2020 16:40:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581813653; cv=none;
        d=google.com; s=arc-20160816;
        b=zE9P7l/k3j1lSf6AYd68nUzEtW42C8dQbSNbNq9r8BmvTZzK6k9FOisn6Vd9W9uwsC
         tLJpI2h55Uba286jiAj9WB/KM5Jwl5c0ey9lD40wcWUGWrPwByRX8CzEOkgZmss/Tdx7
         1m2yPjO34PuCtkNVAKLGLtKzxrp/tikTsRvo1A1rliK8X1k0cDUCDoXRunjOQLl84Ck4
         Kpjp+DAH88yAunz9yL1ouGoWal+kFY4XNHXo8Cg3jCpFqkvwCb5SK0N7QDlFDKPDJuZk
         GNkmK809fExDo8FRUgoi3NYNWOFjIlw0h44GEZG92jbAxatwMJwPqosaPPAhq9mNKLGp
         vxdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=xP2d5mrDDYuWOGt0j6R7sVfg2HV+cZtGZwXSSh2x4yQ=;
        b=h41OTN9VaTxDBK4vsrxulLTAnWJmq5xlYv1vXq6jB1S2g7wdOY/nSjxrE6ecBo03fl
         Qlo1J6qHTa9kWhB4Sw9MKz/4Be/4iNv/ord8Web6jc82PmFKrzrVoQsGNvnmkYAABU3N
         +AQjc8xWGVjkHNTWGWel+N+tAnAjhTvAX2OmV56MSBpRoPuukxg9olBuhXThHMaqZyto
         PN7rUlL4yikUm1GlNJrYB8eCL5TltoCILloz/QFp7jvlTkmVNDh+D/TjPcz7w1+WoNrA
         f+IDvajCEdHKOFuYXsFJIuVeC+1nr59hG2RAoS3M8nu0EEfGQla/Vo0H4WpA6KOz4zzk
         t4/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="hWX56Dh/";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id y126si465689vkc.5.2020.02.15.16.40.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 15 Feb 2020 16:40:53 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id r16so12813613otd.2
        for <clang-built-linux@googlegroups.com>; Sat, 15 Feb 2020 16:40:53 -0800 (PST)
X-Received: by 2002:a05:6830:1608:: with SMTP id g8mr7101714otr.169.1581813652532;
        Sat, 15 Feb 2020 16:40:52 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id c12sm3438979oic.27.2020.02.15.16.40.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Feb 2020 16:40:51 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: "Michael S. Tsirkin" <mst@redhat.com>,
	Jason Wang <jasowang@redhat.com>
Cc: David Hildenbrand <david@redhat.com>,
	virtualization@lists.linux-foundation.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] virtio_balloon: Adjust label in virtballoon_probe
Date: Sat, 15 Feb 2020 17:40:39 -0700
Message-Id: <20200216004039.23464-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="hWX56Dh/";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Clang warns when CONFIG_BALLOON_COMPACTION is unset:

../drivers/virtio/virtio_balloon.c:963:1: warning: unused label
'out_del_vqs' [-Wunused-label]
out_del_vqs:
^~~~~~~~~~~~
1 warning generated.

Move the label within the preprocessor block since it is only used when
CONFIG_BALLOON_COMPACTION is set.

Fixes: 1ad6f58ea936 ("virtio_balloon: Fix memory leaks on errors in virtballoon_probe()")
Link: https://github.com/ClangBuiltLinux/linux/issues/886
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/virtio/virtio_balloon.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/virtio/virtio_balloon.c b/drivers/virtio/virtio_balloon.c
index 7bfe365d9372..341458fd95ca 100644
--- a/drivers/virtio/virtio_balloon.c
+++ b/drivers/virtio/virtio_balloon.c
@@ -959,8 +959,8 @@ static int virtballoon_probe(struct virtio_device *vdev)
 	iput(vb->vb_dev_info.inode);
 out_kern_unmount:
 	kern_unmount(balloon_mnt);
-#endif
 out_del_vqs:
+#endif
 	vdev->config->del_vqs(vdev);
 out_free_vb:
 	kfree(vb);
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200216004039.23464-1-natechancellor%40gmail.com.
