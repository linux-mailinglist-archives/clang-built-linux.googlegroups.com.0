Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBZ6J5KEQMGQEBYQXW3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D5A4060DD
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Sep 2021 02:20:57 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id u21-20020a631415000000b00268f723a4d3sf91767pgl.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Sep 2021 17:20:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631233256; cv=pass;
        d=google.com; s=arc-20160816;
        b=FPEkMfx+RiCGS9WeO92sJcPtG0QUX/q8vFO3ilTQC7QhIkWOw+n8+X92vVRIH6geuM
         env7+HKeNxnaUZkUlsrlWpcfNHrAnW8mZZEGj+rOsQcqQI2nGuiQ8EWuNk1C+AqfZ1F5
         WG0G0oqSw+NWnzMh+sK/6PfQRalvJQooooMUJR1SqUG92U1daMEiaUYrAAofFxDnxzZc
         63qNRbeqCEVHdk/ErGmeidmQXDGeYRln6xQXD9DMWpmDMlhuUiN5X6ZSFU6vMlBNZxPi
         IRv6n1ILb0eU7xVit5CuRM+ODHPkAlZmuA4a0SaRypkyFUIJ+w4U7McED9S7YpjYldzQ
         KpxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=t50Ap2SZK2l2JOG0DZ/gHQeYp9piM/j8VbLTrNQrH0k=;
        b=gjKKA8pSOh6uVIIwuOTNfGYNrLYRH8cyqJzrjd/wNdk3b6z6wMT6pbRM1rIh+tqkpV
         t53JaxZmBeuR1uCzbzZ7TRQYUGHxosaT5kmuI75dwntw5hxu3YbsK7TPX+WlkGSQGbTB
         wlpycGX9qdhxs/V9NjZWjX5F2lhsQQPGdAJLFMVdJGnIKGfuMTaUaIAHEas9SkvkHVJt
         Fie1yfj8TJVM9iPnND4N+4SypAHFrBtHf6Uffb4AYb4ypmKusmud6W0uFjWD1sVKu8HO
         7TDNLjLi2OWjHIl1iRYJtozHm4zUOIZEk2GoVKgiwUTnrQCirDnBV9j+V15FxZo46wrk
         LOIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=SzwfblW9;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t50Ap2SZK2l2JOG0DZ/gHQeYp9piM/j8VbLTrNQrH0k=;
        b=OOl7NVyMRJ9LkQ4ejUVXRizQAxmnFujwe2kromkk9vRgcCWiS4GbOmK/3TPPmAYWul
         zENCtjlmaP1OUWGL0eZWgaUkSrN1pCoNDD8c/t85ZXNlsp+Uz3PZ9KqqCy/CKSzDZLM4
         8LSW7JW+79i9yfYmjurV5tNda0295jn/+aOcSZFWChwYGXIv5hXHJiqS7DFx1n8MuxOF
         N/fBdRCtbGN8skVIx1BeTfxiTHl1Nn/P3GqU/vRYv+aLehSW3XmbAR7apw+2GBsHj8Dt
         D4VBSbMhZLq4D443XXaN/k/nEva1qdzmoWBsazIZWcd8M36LZfxYZcWm4cvnoIHP98jp
         pM3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t50Ap2SZK2l2JOG0DZ/gHQeYp9piM/j8VbLTrNQrH0k=;
        b=8G5wdd+WNGF+nkmDZDrOcpF0VQ0Tx2e/I4mU6yLrewlq/2AgiDKQc75Jx0QT9nwHhN
         OhdVX9kzmjhXf58m5YYv81yh3rCxu0Rrzyr2rEGBdWl9CRTOKgiHcDbcdDknk5s4BqA6
         l39Bkx2sgec+6H8fOlqv8xEYzbLzYrcbOrlpto6pdGFrKxHfFw3WMrfQqOW1g1UTWsHI
         FLONR5dcqV1f0Xit/5FUCxQ+8RVkxhVSO2mnxe7tuTZT8bTobCybb9MElXTaMs+2mOv/
         6V31Wd3bx7ccoYpYyKKtk+wsvT5iCgjANnnvWF3wdaFc6Et3QPo7uDHd0A9JkisfX2XS
         f8iw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532zJbA3m2amY25bTcBvG840v652FDXJA1tyeMIGUspK7WZW8aMB
	vqwdegZUJhRoioRJ4plwElU=
X-Google-Smtp-Source: ABdhPJxIalgdsZsh3FA4r8TyZyasFOvuzHZ0Qov7IfCXagGDmOKv1a04vbUHWAPQX9sAxlY5oUs0Tw==
X-Received: by 2002:a17:90a:4306:: with SMTP id q6mr6304176pjg.202.1631233256074;
        Thu, 09 Sep 2021 17:20:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:1891:: with SMTP id x17ls1525233pfh.9.gmail; Thu,
 09 Sep 2021 17:20:55 -0700 (PDT)
X-Received: by 2002:a65:5948:: with SMTP id g8mr4936982pgu.51.1631233255387;
        Thu, 09 Sep 2021 17:20:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631233255; cv=none;
        d=google.com; s=arc-20160816;
        b=tsOvvsGbL7RIbVV0wSnNB1vWIIIcU5XGju5xPIiBzp+LNCjBTqdOJrMS5aDvhWfG1O
         pTBHctymxKKvwjUiHXdylBi4F2nKFCK9yyCfO+oVISzclPzXgEOY0AaLH+yZhJPM3XMr
         JSmwYm4wo90gMhiKMIXBnzF1OrXqK5pHvl4D5j1JOJtU0urIH41Z3HVdKxlTj64lIzkW
         kSiijyB44W9mcB1vJIq8uoyEcslNR7TqpVZki15YAdbFDWgJPhuH7FYRsK4c8huLAnRa
         xI1Osz9f4F9T/UV5cUy5JjivqqPHQeNGlKgs0whSEvQxWi/fqY4bRrWKVrXUFabrfdNe
         rEYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=z7r42kvFS5ZHEuLNyAcmT8rNWGY+w1/goehdeTiBAZI=;
        b=Nn3B3NYhwJtH+2e6MHJFC5cniKxpoUULN3dWBbi996MpCdEyyBadJM3lRp89jefouu
         aex2JBkptP3qXCno7IH/ANxAm46RB0fG4GfJyFKfhfnD+hOj66Llq7guC8PZe2Ou9qmh
         uoU0ZuZwRJKyjXOM4IYT82BpR2x9AhGiMRRyzbl6DO93Ci7PPHAAu7VNtUX+4EEgE76n
         1tD4zKuMzHpal/mew6k7ecMeBP8Lo8PP5s07oPbynSoPAVr6IHCZeeBtw0dLcNdH7flU
         ff8tA0tcnL/xac2dQAnqLFZvQabBNkdd3rz0GGoUlz9DQPSKo9AivXWQjYEZz7WMU08D
         COlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=SzwfblW9;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id bf14si337414pjb.3.2021.09.09.17.20.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Sep 2021 17:20:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6316B6023D;
	Fri, 10 Sep 2021 00:20:54 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Theodore Ts'o <tytso@mit.edu>,
	Lukas Czerner <lczerner@redhat.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-ext4@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.10 19/53] jbd2: fix clang warning in recovery.c
Date: Thu,  9 Sep 2021 20:19:54 -0400
Message-Id: <20210910002028.175174-19-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210910002028.175174-1-sashal@kernel.org>
References: <20210910002028.175174-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=SzwfblW9;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Theodore Ts'o <tytso@mit.edu>

[ Upstream commit 390add0cc9f4d7fda89cf3db7651717e82cf0afc ]

Remove unused variable store which was never used.

This fix is also in e2fsprogs commit 99a2294f85f0 ("e2fsck: value
stored to err is never read").

Signed-off-by: Lukas Czerner <lczerner@redhat.com>
Signed-off-by: Theodore Ts'o <tytso@mit.edu>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jbd2/recovery.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/fs/jbd2/recovery.c b/fs/jbd2/recovery.c
index 25744f088a6c..48b5efd2ad45 100644
--- a/fs/jbd2/recovery.c
+++ b/fs/jbd2/recovery.c
@@ -760,7 +760,6 @@ static int do_one_pass(journal_t *journal,
 				 */
 				jbd_debug(1, "JBD2: Invalid checksum ignored in transaction %u, likely stale data\n",
 					  next_commit_ID);
-				err = 0;
 				brelse(bh);
 				goto done;
 			}
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210910002028.175174-19-sashal%40kernel.org.
