Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBUUFW33QKGQEBNO7MZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D1E20205A
	for <lists+clang-built-linux@lfdr.de>; Sat, 20 Jun 2020 05:30:27 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id b135sf12297451yba.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 20:30:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592623826; cv=pass;
        d=google.com; s=arc-20160816;
        b=Yluf9LdPelAOSjGgAI3Vih6JVavuO+W5jNOZ0m311zrW6t5aB9kS+5aE31TPYHR5uY
         Y9p4B7ckQpn+1ajZ2JnDr84BTt5UOz+spp4xW7EVdMckVYCxnbQJ1LKcm7/M0oQc2N9k
         M4zaSOYMEX0YvDspcLlcc5wMxdCibv244Zev+QgTquAatpBp6XpZ+THDBI6cQNwYqzXw
         v3Ul8r1dKdVFCwvPNZbfX7yRkhEozSfDWBSNg79l6/HkUGBP20MsCho9mN3JMdWT7TjX
         DwuSJe3237/sGGKldn/VRaujE+pmKBoWRDz9wMAqbaKuB2vjHwBZg+N6Ee8VoUWGpzjp
         bThQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=XitjGmpMhctv7IG9f95A/NkiHUy6YcaiDvlZXP2UYm4=;
        b=eYoii9wr/qAKmpDklf+1cqc1pBWigP9zFJDk05gQBZ5zjIWAt2dq1ly78MOnTgmIny
         sdtV/cNoj94/2VYuE80IwWe/joNxI43uDqA9T/0x26Fsm+MyiyVu/HuUncACALKLiWI3
         Q8/5MAsJFNhKAqnsxNtB45uuI6XRZvBIcgVeiOGDScXzytrBIKbUltDIuiOxSRV7MKrT
         2lJspxqd6VabXqDhb+89J6O1+9PjZUOKoF2AyCYIJOUXS08vs1doW/hvaO1kMrACNAyz
         2kvtz7xuPgcRRSY9jhpRGD0qe1u992xTkigsx3xhCz0baiTqlnxR+Au9FwPlgAqGtCxR
         X5WA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=NXIjEZzm;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XitjGmpMhctv7IG9f95A/NkiHUy6YcaiDvlZXP2UYm4=;
        b=gfEg5iCCcKxH38cv+Shb5MiGlBkDvdY3PSCRSVmJyZIfe7N5KSXSQGmvcnjA80y0Vh
         YqrEe58n6n4cqLnH4Cc7VFMV0tWDe7Dq+lAcpejn3EXAMBiEMuEXM0UNSoUAIfaKUVVQ
         46bqfWuGXxMZTHlHUDxmttbDDe0QXEJLREsqIUxxnbSYO+Yc7WRBj6oQjRTWWV/GU7+E
         NLm8TkQn1Lhn60kIT80UeKl37JlACUWpjTjsGGrKGtVeLSjAJoqG8UobOPl+lyI1xxlg
         V/qYY9mbqW2ZqS5veecrsloh30wkcULrBQxTnvvrxw7YNN+sf/LHR/7bvGKwsS3CYWQE
         2QDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XitjGmpMhctv7IG9f95A/NkiHUy6YcaiDvlZXP2UYm4=;
        b=MinS+DI1G22A4TpkBUVqQ5K1OYpjxHBxl1Lqi/G/3ETjklCgdtxxrgSp2udYHjArLj
         nIiFBcmFvCDPEkLLcMR76yO++CuAoFGMyx2FZ4y63yUhw1JA3SIaLSYkU1PZaA06Q0Qw
         GuR3aaW+I6jBmgcf2lpTyCLk2/9s1rf0hIZLhKeYiLCuwf2513MdKKOSo648EZFgZEFQ
         34fvtBzRWkdfA/vnj75p9e2jRhoF706W5eRqWIEE3Ze7FPmxIeLa22P0B2lKoWaAhwXK
         FuMIkc2WmrNMRX1BOZ+6xG7qb+L4XBHZe+/7Qgc/wDSRJEqJfTWTaOyJ2C8Ib8upD3Nb
         t5Bg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532K5sNddnV0ber7pdsMMyCaOLyRBNqJrnSBEbGtt7XEA3cCoD1v
	0j4HzSDmrDtPBM0PtWrfIAs=
X-Google-Smtp-Source: ABdhPJwMOIWFBcqOp5O6WFkwPnfJiLD6DdFgOGXl4Kjc1tzHKTPNdk9MICB+nfGlMYZBXZbPXShFzw==
X-Received: by 2002:a25:abf3:: with SMTP id v106mr11096557ybi.462.1592623826460;
        Fri, 19 Jun 2020 20:30:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2e50:: with SMTP id b16ls4340472ybn.6.gmail; Fri, 19 Jun
 2020 20:30:26 -0700 (PDT)
X-Received: by 2002:a5b:f4f:: with SMTP id y15mr10916746ybr.184.1592623826139;
        Fri, 19 Jun 2020 20:30:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592623826; cv=none;
        d=google.com; s=arc-20160816;
        b=dAZOHyrnSerbrkAj40i/qomB+YIEqTs3CRYB4Qw27d2W7ib8aemSqXTJER4OJg9zl0
         QUVgz8GkzjTnDKZPaBY71lKEG1rppgEDXfiiOrzM5/edG4bHVUDcjoiSv5d+huNxLeiL
         NCOPnjaGED4r2T+sKdJiX4w9pkpp+qW7jEMVRLfdUMFxioq1Lc4e3ZrilRQ8O/jseUPO
         qqbPI2anePh79pL8V66dWo5COxl6pJqjaEv8DuAuJ7XcgD+63boL90fbcDYdrxZzcsIy
         dvyGCveYQE4BkFWDXsaLvK1Wyldc8RlhDkLxzDIWmyGzYlVlKhwblZnKsMp+LS0UuqZ5
         Riww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=7ExlyNd4C6Vtqo5InL4xGzXnaPAWUSdxdUBoxlRz8EM=;
        b=Z0gXfUffj22fREr7D3zGj53pIBuwVS8RHmtfTxNdEiUkjxCy2ryxSgob0oVCT08ARl
         U0iuGWGd4XjzZKukhlb1P0tsv27uIplLAfRL38YgF2i3LFZvesdiTJpp8T7AZYDhQLbz
         Wc09RFiWm6EhNHDCtfnkFMtHFdBAovoNUp0yVahPf6dR4VR56apYsftxw4JipaqnuvUa
         tKdk77wjrRDDCHxoe5Nc6d+asMGg66vfkGNdQ9LoeG8Juk45GCTqT6JVR33Ifsnh9GPt
         Etw7kN/NQA8ISQKwon3i9Z6sti+pXRUyU+UAK14FlkvpgactgyEVGHWm8l45+BaQnv25
         7Mlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=NXIjEZzm;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id a7si515612ybj.5.2020.06.19.20.30.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jun 2020 20:30:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id s23so5371624pfh.7
        for <clang-built-linux@googlegroups.com>; Fri, 19 Jun 2020 20:30:26 -0700 (PDT)
X-Received: by 2002:a63:dd42:: with SMTP id g2mr5615212pgj.442.1592623825373;
        Fri, 19 Jun 2020 20:30:25 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id n69sm7060385pjc.25.2020.06.19.20.30.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jun 2020 20:30:20 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Alexander Potapenko <glider@google.com>,
	Joe Perches <joe@perches.com>,
	Andy Whitcroft <apw@canonical.com>,
	x86@kernel.org,
	drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org,
	b43-dev@lists.infradead.org,
	netdev@vger.kernel.org,
	linux-doc@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	linux-ide@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH v2 11/16] media: sur40: Remove uninitialized_var() usage
Date: Fri, 19 Jun 2020 20:30:02 -0700
Message-Id: <20200620033007.1444705-12-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200620033007.1444705-1-keescook@chromium.org>
References: <20200620033007.1444705-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=NXIjEZzm;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Using uninitialized_var() is dangerous as it papers over real bugs[1]
(or can in the future), and suppresses unrelated compiler warnings (e.g.
"unused variable"). If the compiler thinks it is uninitialized, either
simply initialize the variable or make compiler changes. As a precursor
to removing[2] this[3] macro[4], just remove this variable since it was
actually unused:

drivers/input/touchscreen/sur40.c:459:6: warning: variable 'packet_id' set but not used [-Wunused-but-set-variable]
  459 |  u32 packet_id;
      |      ^~~~~~~~~

However, in keeping with the documentation desires outlined in commit
335abaea7a27 ("Input: sur40 - silence unnecessary noisy debug output"),
comment out the assignment instead of removing it.

[1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
[2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
[3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
[4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/

Fixes: 335abaea7a27 ("Input: sur40 - silence unnecessary noisy debug output")
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/input/touchscreen/sur40.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/input/touchscreen/sur40.c b/drivers/input/touchscreen/sur40.c
index 34d31c7ec8ba..620cdd7d214a 100644
--- a/drivers/input/touchscreen/sur40.c
+++ b/drivers/input/touchscreen/sur40.c
@@ -456,8 +456,6 @@ static void sur40_poll(struct input_dev *input)
 {
 	struct sur40_state *sur40 = input_get_drvdata(input);
 	int result, bulk_read, need_blobs, packet_blobs, i;
-	u32 uninitialized_var(packet_id);
-
 	struct sur40_header *header = &sur40->bulk_in_buffer->header;
 	struct sur40_blob *inblob = &sur40->bulk_in_buffer->blobs[0];
 
@@ -491,7 +489,7 @@ static void sur40_poll(struct input_dev *input)
 		if (need_blobs == -1) {
 			need_blobs = le16_to_cpu(header->count);
 			dev_dbg(sur40->dev, "need %d blobs\n", need_blobs);
-			packet_id = le32_to_cpu(header->packet_id);
+			/* packet_id = le32_to_cpu(header->packet_id); */
 		}
 
 		/*
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200620033007.1444705-12-keescook%40chromium.org.
