Return-Path: <clang-built-linux+bncBDRJJBNBQAFBBB5WT6AAMGQELGGKH4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 315602FCB75
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 08:26:01 +0100 (CET)
Received: by mail-oo1-xc37.google.com with SMTP id v42sf2731789ooi.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 23:26:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611127560; cv=pass;
        d=google.com; s=arc-20160816;
        b=zW9LT7eSRTxO5lkfoUw0PNSkQEydYR5f0LjWvYwOdyoHQ7GZ+82rLCSnUkGJmfdxSq
         SFqFwS9SIQT89DMDmXBkOcaolI6EscYWBSjBwrAPl0oQni+1hyERU5DtP6H/6LGmG7Hz
         HQb9meA5Gb7CttbZxMUX1AZIVdgszt0f1c5VMxSnZPNjFYAhUMdBsQpeC6HtviLxEfDr
         a5KXfjx8wCRcvJ6bXvftPSEt2ufCLxu9ZvmUrQVX6RN1CguFBGejhHIbd5n0eHcsAGlk
         TwyEwsEIret+/Rj6qWwMJXBoXAZ9ELOlEtK827x36yUChqwiMxS+G25ci3FToay1Sa2y
         uKxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=i6IMyyxdIlSLaUywNxJbB3mlqpNHhpG5x01KZLguYdQ=;
        b=m6sM1pmePwfOrCF9jIFRN7cjZjnhg3KBCwi5w0EYoG1JTCO7aHa8PgCRGY7U5Fmazs
         pWPfzmuS+QrUsMKTHrBi5A/xZVk3B8kohXj21c/vYrQpoteNzmiOJwKTLqsZTv9LU2Rl
         YD7PCGWfKWY8PKfcmkJoHKLjUwFc14C42iNAXb0qpI93kgpS67UdkktVoKJvDKA8AuSy
         ak4hVhFUvdhyK8Jyclxe/LrIKDcns6vSIvM5qVR0EGANG2LjRyYqAATrqfjIOe+JNo8E
         T9WZOz1dBcBnQ2clwaGw1sdCxXq5TNEbUEjqZqhswSl3ZZyhefEhobTn1EJw4A+r2PHC
         oV9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KOE6EmQv;
       spf=pass (google.com: domain of yashsri421@gmail.com designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=yashsri421@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i6IMyyxdIlSLaUywNxJbB3mlqpNHhpG5x01KZLguYdQ=;
        b=BbtudmRWI1bWwXiW0FDpzqSwYMmSHZJ9eSSRiWm2xVrYCuT7dmfV12k/iloh183Xk3
         C4IwjQO0cCfPjaShePRa9PH2qS6/SbYETFyyIpgoXL1tdou74OOAld7eoPU6pxavOPJo
         EVXSxZQHjsNNX7rtz0398Z6jnuJAqzpXpxa7bcuH9QHMP65QfleyWFFXrFqsBb5G0yEc
         lK8AAjU058Zt0hog8ipHiJa9Kc+Pb8uo27IKfLuwzGj43Fh8mTzLXPLTXvM3iMR1f5SS
         U+DoGpcPY1oOgfbOlzWvkP6huQTMbRZwbXwu7a92kpWlqimDzNqMvMWYPZcSKEDBb8Y4
         wo/w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=i6IMyyxdIlSLaUywNxJbB3mlqpNHhpG5x01KZLguYdQ=;
        b=JfCqC/Sj7/9oB/08TDYu6P4l1iZjsPnFMAqUBViXLFD+oCYg1TlkJocMyXPnnCZwVg
         9Wca6GT/3n0sPHzOm6Inqg7jEIgidj4ihJUGL1m7TeH4VTm0pI2giSXGrW1Xh27LeKR9
         UoSFeQdLc9GDFTYm60j5XAVgoF3EoRQ3M9iiMC/0zikGudOdUo7uaT/i+Xid4ln815wc
         ZjC9MBvZ1nZlpxZ01ldz4MLjTYUHPKmzD9tvpqDEKsZR3Dg+HEkqQcjHmI+617hq0HiV
         sRVg+LwOBs4lXwuSDN4F5yrNr78gPtY2YR/IeKajAIKK14rRryhMyeNXYHJFBdLXbTnC
         JXZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=i6IMyyxdIlSLaUywNxJbB3mlqpNHhpG5x01KZLguYdQ=;
        b=VLUhem4tKwc7ns9zJre+wlJynDl6I6q/9Rf82HLwFY7iPkcOTr0DQUc+w88XRYG1MA
         WugNM7wF+rYlOrFUZEgpJeXf4hPAV/F2ZVWGKUC2S+gc9y5vjXOjPsmBmCDn+nEZtFPE
         c1J1KBQZ5H4FVZY81dNHXnGqJZMekoKhKGyJ8T+q0SgsAIfwkzP9CBaeyC+BiaxCWuna
         MlVBGwhPAK3a4+dLvX+1MVCruPJSeeB+qs+LAUblcuESoTaRTQUkEuU/3B4/rEHhFagE
         tJkqhO3QfGuLF2RytxAlDYc3jW62PftpkmBRQCI5E9Vzup8PnTGeYnm+fl66CYCuSpe0
         mIeA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530LWhkfZbO7eyTK0TSQe+Bu9Ecfbraa5GOD9c/0AEhCpvwIWKcx
	1tPagpPMyLL6VbMbU9/9/Ok=
X-Google-Smtp-Source: ABdhPJxgSDl58BVAMyOaaVWVBxcY4Q4FihfdmBO22x/zJ0miUzFqR/0Rh0owarcd1Q439V7J+l1rUw==
X-Received: by 2002:a4a:e9a7:: with SMTP id t7mr5362565ood.31.1611127559999;
        Tue, 19 Jan 2021 23:25:59 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:fd82:: with SMTP id b124ls4134944oii.3.gmail; Tue, 19
 Jan 2021 23:25:59 -0800 (PST)
X-Received: by 2002:aca:b583:: with SMTP id e125mr2089702oif.30.1611127559598;
        Tue, 19 Jan 2021 23:25:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611127559; cv=none;
        d=google.com; s=arc-20160816;
        b=VXrLfT3H8zlb4eETaR2hznjNaWQ89tDBQuii1PzjJsvxdDBJu5PWaPffPkJigGjIZN
         B3yoZyJgQ6TDJ8yF67C/GMiM7yh+0mKRUC8uObKAkN1C/tqRa7sPJ936qBLoJJ5tmt/e
         2AiAZlVIAEStXhA5hpEWzFtGKvsNumcgbOFHq3CH4cNnSfo7nyaXkJHsdhAuKm/xDWbk
         +aOySgM3HylCwy1WEIPDQnaaairRs9vusn5mzxfoqYP5kZb59Ov8UtiJv5YM//V7PVnA
         yNtE8qvmA/gYTfZ+Mmldw4gxW/doq+5irVZOyv7EoSX0JQ7I+UsRzgOZx7Nwl0IV6b10
         jGag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=WlLbPCtA5zX530YpM9Rqf78MCKfOyhRy2nl/un5gf4Y=;
        b=dr18cENXN6s5i5w6G+m3XIqVFyxmSL4RzSr09XV/9l4KqHj0V2XIpQ+LMpucDlrQzw
         Nb6ZbXT6dUFMrboSuGEqUy0u0UxrQ7luU06JCPEH/kViezfXQadMrOwheWe1NWVrxWz1
         A7au7UWGwEAzt5TD8Otkcb7oVx7ugHoOYYqYgmEkMlNyt6KdCsj3Q7w/MOxmuCh+SCRo
         IPn/6bmB8XS4IodGwBp7Z9zYBUSYi038QwQ3gmA8p222LmQHSD3aO2qQKZ+EVkW6Pnxf
         R/FhWHVFFI8+e3LqQRuXUWMJ+AdOeUdveuYzE3+mr4iQrw+un1QlAuTjQQtmu7Q6BG8T
         Irkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KOE6EmQv;
       spf=pass (google.com: domain of yashsri421@gmail.com designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=yashsri421@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com. [2607:f8b0:4864:20::630])
        by gmr-mx.google.com with ESMTPS id m7si121641otq.5.2021.01.19.23.25.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jan 2021 23:25:59 -0800 (PST)
Received-SPF: pass (google.com: domain of yashsri421@gmail.com designates 2607:f8b0:4864:20::630 as permitted sender) client-ip=2607:f8b0:4864:20::630;
Received: by mail-pl1-x630.google.com with SMTP id e9so7875196plh.3
        for <clang-built-linux@googlegroups.com>; Tue, 19 Jan 2021 23:25:59 -0800 (PST)
X-Received: by 2002:a17:90a:a10e:: with SMTP id s14mr4103098pjp.133.1611127558777;
        Tue, 19 Jan 2021 23:25:58 -0800 (PST)
Received: from localhost.localdomain ([2405:201:600d:a089:7054:d78f:3538:6af3])
        by smtp.googlemail.com with ESMTPSA id 192sm1199519pfv.209.2021.01.19.23.25.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Jan 2021 23:25:58 -0800 (PST)
From: Aditya Srivastava <yashsri421@gmail.com>
To: linux-kernel@vger.kernel.org
Cc: yashsri421@gmail.com,
	lukas.bulwahn@gmail.com,
	dwaipayanray1@gmail.com,
	broonie@kernel.org,
	joe@perches.com,
	linux-kernel-mentees@lists.linuxfoundation.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] checkpatch: add warning for avoiding .L prefix symbols in assembly files
Date: Wed, 20 Jan 2021 12:55:47 +0530
Message-Id: <20210120072547.10221-1-yashsri421@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: yashsri421@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=KOE6EmQv;       spf=pass
 (google.com: domain of yashsri421@gmail.com designates 2607:f8b0:4864:20::630
 as permitted sender) smtp.mailfrom=yashsri421@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Local symbols prefixed with '.L' do not emit symbol table entries, as
they have special meaning for the assembler.

'.L' prefixed symbols can be used within a code region, but should be
avoided for denoting a range of code via 'SYM_*_START/END' annotations.

Add a new check to emit a warning on finding the usage of '.L' symbols
in '.S' files, if it lies within SYM_*_START/END annotation pair.

Suggested-by: Mark Brown <broonie@kernel.org>
Link: https://lore.kernel.org/lkml/20210112210154.GI4646@sirena.org.uk/
Signed-off-by: Aditya Srivastava <yashsri421@gmail.com>
---
 scripts/checkpatch.pl | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index 7030c4d6d126..858b5def61e9 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -2501,6 +2501,9 @@ sub process {
 
 	my $checklicenseline = 1;
 
+	# record SYM_*_START/END annotation pair count, for AVOID_L_PREFIX
+	my $sym_start_block = 0;
+
 	sanitise_line_reset();
 	my $line;
 	foreach my $rawline (@rawlines) {
@@ -3590,6 +3593,25 @@ sub process {
 			}
 		}
 
+# check for .L prefix local symbols in .S files
+		if ($realfile =~ /\.S$/) {
+			if ($line =~ /SYM_.*_START/ ||
+			    (defined $context_function && $context_function =~ /SYM_.*_START/)) {
+				$sym_start_block++;
+			}
+
+			if ($line=~ /\.L\S+/ &&		# line contains .L prefixed local symbol
+			    $sym_start_block > 0) {	# lies between SYM_*_START and SYM_*_END pair
+				WARN("AVOID_L_PREFIX",
+					"Avoid using '.L' prefixed local symbol names for denoting a range of code via 'SYM_*_START/END' annotations; see Documentation/asm-annotations.rst\n" . $herecurr);
+			}
+
+			if ($line =~ /SYM_.*_END/ ||
+			    (defined $context_function && $context_function =~ /SYM_.*_END/)) {
+				$sym_start_block--;
+			}
+		}
+
 # check we are in a valid source file C or perl if not then ignore this hunk
 		next if ($realfile !~ /\.(h|c|pl|dtsi|dts)$/);
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210120072547.10221-1-yashsri421%40gmail.com.
