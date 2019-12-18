Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBOPM43XQKGQEM67SKXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id B24B9123EBE
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Dec 2019 06:16:42 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id u14sf456566pgq.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Dec 2019 21:16:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576646201; cv=pass;
        d=google.com; s=arc-20160816;
        b=lIYUmIiET8SiZdpOisRY+QSI01uuhG/azyJVxGZmJgpxWdA/507lr2XZJR7+BB1pdp
         AXiRPKTA+OsoVrxVve1BJZWxAdIWTj6x60FuQRuj/oPpPsKQHw4swJPAqBG9zQvgYsS+
         JuLypJHdIgUOhOu2eijBIkG7JKf7c2bMp7peOwTiUOvh5zvfgymC8pFL3hCzCk4xSXs5
         gl3JByD95kB9pTlLj1lsbEk6Cvr5i7OfQ3CImm44eNUo9LuI7aI/bKLQT38AYWuStB1F
         WbQopAMNwqgbOxuVk2Viw8mM+2jvEX4t0kX4MPx8BHpMPjilGEtDNqpgv0ktxoNBWQXT
         AHAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=28hdOZYF/BzKZyOduqq5cJdOkqDck4XnVnwsyUoXNnw=;
        b=uKwIfn/OW22fQNSOWF1eqC/8o8iSWkMmxUH6Sz6aVkbjro8JCLSu9za65ceczXsBsV
         5CXo4VVbDuMROjI1hi1w1kgbTQNIZ5UKci8XiolvbKUrq4Ge5N8BenkCNYoC74cG2Oeo
         6PWCH0mFt2I+Px0croLMKFckxO2YLw74Sp2wGuNvo4pu3FNMG9CH8hd1TBHtgR8SI8hg
         ZiZcxH7lz7Q2z2a11Fi3I9htIUm0MovlW0Zph/303l84Vzw4F/ZJsWZSMUo85xncPZd4
         tUoBuUaY/pWLBmZlvI3Fis6bngaQeJOMwxPifXmLZcTwB7VWgIcgXO4lnMo5mOo+3MiJ
         Gh2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AoMZzl4p;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=28hdOZYF/BzKZyOduqq5cJdOkqDck4XnVnwsyUoXNnw=;
        b=Vd48urgD1TRuXUkFjzOHgXaP6EszrdVlUvGE68lKkkwBdt/WCCZs7XFIfpUyZMWhoR
         zp3ursC5ruC1Hl/fLZfNm7afahF0LRFi3+HWLI9DfuZ6rJoaRF/BmxQl55hbxDYgnM1Q
         9i3wXa62qGxVezJ0Wxhp/2m74swjVVE45fO+RsMQAsbctEyuud9iIrLYQMDDa1uSdLuK
         LlpZ7158uGOpMZwVycVWvZ/f4umZpGV8PcjzN/m0141Iwxf4nc6nLz7F26u+FF26q05/
         N7PZL2cgYQLHX+FGRh0LB/EGcUMBqwbRqBJLBufpHMBqt+dF3IeavahJrW+tn2VCmYhL
         y5EQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=28hdOZYF/BzKZyOduqq5cJdOkqDck4XnVnwsyUoXNnw=;
        b=MnTN2wdadD+xQjUlwdMPHXSchWLB3QOgRExAT48EAh52ybktDfqzjFTizvjbzflbnQ
         F8UZjheOVZ2fkSyPzENwh74tSIz7wikTrRSSBiLw84GqzIfx8qh3kat/IKx13kP/7wE7
         LWO7jDxDD261QqNEwsI/6eDk5wQD+Cdi7amZRYF4/52btPjN+WzZPpY6U97ONr68DAfF
         Zeq6LW4dhpE7eNR+m8d7EkEa/nRVljrlV0C4W9pzHElbeTQUBJfZgQPxL4iYoAsSskIM
         LEk4Fi9crXMHL6t1nP9d9HhLLWmQd1lbA9QxCXF68JUWUZ0mfleJsgn9Zz4f7rACfNfN
         5bhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=28hdOZYF/BzKZyOduqq5cJdOkqDck4XnVnwsyUoXNnw=;
        b=OvHPvWF3Mkf4pc9sF4oGGNcECL3XTt/4bZRHzHT2xj0koanv2JB28/CmW4xIiW/rZ0
         vLR1pybcLdGSf6Ye9dDYJdmThG1DglQtWV0wgCPmYP8b3ZIsWJ+zailBVwDIlPMX80/X
         T9wZQSPDdhvgOU12NiGKyFts8QMbyvU7UFSssTRcO7qzjWH6t8XoG7tc/WapBeaSOWbZ
         uwo2P4p/0/S/mQNkA/baoRIFsSvnKSWyrG1pQpD3064vUAOmec3lAVHS14xKL9ffcOlw
         L206pLltOPJbK3fKmEAJRqTpOgSXn2wJUgP+/PjbURvhsYfv2Z9xxqAkQS4mMLlc4yOy
         vpnw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVWbOb6DUJ8ja9wm7m0kY9y39kYM1RdkAJUeDgKh6Asj010udhD
	7kc+whOthMrlXHVV5g/gBW4=
X-Google-Smtp-Source: APXvYqxLRJd6vh5Zx/gZa2xlIKzmSYgczCoEZTQI0n1P7tJs/DE0UJnL+3Tj8Vl7Vl3i2QXFfxHnwg==
X-Received: by 2002:a65:4c8b:: with SMTP id m11mr880137pgt.208.1576646201335;
        Tue, 17 Dec 2019 21:16:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:2646:: with SMTP id m67ls219469pgm.2.gmail; Tue, 17 Dec
 2019 21:16:40 -0800 (PST)
X-Received: by 2002:a63:da4d:: with SMTP id l13mr909527pgj.106.1576646200853;
        Tue, 17 Dec 2019 21:16:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576646200; cv=none;
        d=google.com; s=arc-20160816;
        b=enCw8uXV216YZbBYFG0iYq4R9eYhYeXeMGbO5n8xDV/uj+mCzzcVH8Sf9Vl1J//Hwx
         stItiNHeiBajCU2Z3W/ZCHoyhRybSgZV/TkaI7uJ5CKvIA8MnXU2kY6QJnyfOdzbfkpR
         PgNRSd/ZrGNk71B5Ha6LXjM9MqnPBF/tl44Obi/4LLlwkymWuGMtbhY/leLlJh7zhcWI
         sinijn4BiH/7rcF2r8mHGFGUt+DOx8M/q91jGU2QOrUo5DzHtS/gpxb90F+Nb+6RqLs0
         iKbnxI/XmQpShZGVTdCNHuvYFajac3W9R3yBLfVpFyGr5vU4y3IGd9C2rEBHVeSxT6Xs
         DA2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=jxIZEY/aFZUkloIpwcQQE/QdtpYBJOYCZWZIB95mXbs=;
        b=ojCHqvp1GJAnBEaWLwyCYTL7kmZkoejux52Na04M5OdK3FkIQFIBmuubXVL6W/6eVc
         smmShKWk49blp1HrMf8jyku+BuWUos4YhxVfPM9H28YvuvJg2CJKLfeBE1BLjM+oghMG
         /WSSSM4z7FaGKhODyPkHfHzx9nKyUAqixpbK5Nbu//m+oyg8QRQKFUulOoLm9cEC101a
         e8UZU9JTJEQowLcE01vPkO9nm9aZzb3eNBvP4ZKrb2oTv2q12g2Si37D9wYqye70q8IK
         0iOY2wORn+eXmXQByyqd4J2mieiWpwJf9fN7nNqhVbTLnawd5waLTfSC5C/8Y3ySWTwq
         kH3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AoMZzl4p;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id cu4si162597pjb.1.2019.12.17.21.16.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Dec 2019 21:16:40 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id i15so874129oto.7
        for <clang-built-linux@googlegroups.com>; Tue, 17 Dec 2019 21:16:40 -0800 (PST)
X-Received: by 2002:a9d:590b:: with SMTP id t11mr596526oth.161.1576646200046;
        Tue, 17 Dec 2019 21:16:40 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id a65sm411947otb.68.2019.12.17.21.16.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2019 21:16:39 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Al Viro <viro@zeniv.linux.org.uk>
Cc: linux-fsdevel@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH v2] vfs: Adjust indentation in remap_verify_area
Date: Tue, 17 Dec 2019 22:16:35 -0700
Message-Id: <20191218051635.38347-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191218035055.GG4203@ZenIV.linux.org.uk>
References: <20191218035055.GG4203@ZenIV.linux.org.uk>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=AoMZzl4p;       spf=pass
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

Clang's -Wmisleading-indentation caught an instance in remap_verify_area
where there was a trailing space after a tab. Remove it to get rid of
the warning.

Fixes: 04b38d601239 ("vfs: pull btrfs clone API to vfs layer")
Link: https://github.com/ClangBuiltLinux/linux/issues/828
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v1 -> v2:

* Trim warning and simplify patch explanation.

 fs/read_write.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/read_write.c b/fs/read_write.c
index 5bbf587f5bc1..c71e863163bd 100644
--- a/fs/read_write.c
+++ b/fs/read_write.c
@@ -1757,7 +1757,7 @@ static int remap_verify_area(struct file *file, loff_t pos, loff_t len,
 	if (unlikely(pos < 0 || len < 0))
 		return -EINVAL;
 
-	 if (unlikely((loff_t) (pos + len) < 0))
+	if (unlikely((loff_t) (pos + len) < 0))
 		return -EINVAL;
 
 	if (unlikely(inode->i_flctx && mandatory_lock(inode))) {
-- 
2.24.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191218051635.38347-1-natechancellor%40gmail.com.
