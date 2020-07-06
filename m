Return-Path: <clang-built-linux+bncBC7JPD5NQEBBBDG2RX4AKGQE7BYAUOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id A660C215E47
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Jul 2020 20:27:25 +0200 (CEST)
Received: by mail-vk1-xa37.google.com with SMTP id e12sf5480659vkd.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Jul 2020 11:27:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594060044; cv=pass;
        d=google.com; s=arc-20160816;
        b=rsm6AMxUh/o8oC8n94b0Oktx9D+01kPeOQubSI6GWFmwmAAZi2JtQWar8wrPbtrakN
         Uyo0zdxOsCxU3vufPD5Wi1GAemrU4OEWx9pMXP/qxYLWMMRpVQgkm4CX8qzPkClZHD0a
         cCzXwS2mgGgew1oqkgOKX6IfuL8RZv6J7zyog+Hpw60/F4DHkfIbyxTKuLKyQZc6vt1R
         KMBWpn1S7meTF4qIHRJ61feRRA8TMUo+2zYkYZpn6DGNGjxM/xxa+bo/6eZRYHedjl86
         /epfzClwOr+zzVZPcoIXv8Hy8yr0PUQcQTYV+rBLuO5inPE157EhAL4DGVQB/F19yfUc
         +5Gg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=xtanV25xrlH5Z4b4M/FgQLpe0cuAqKCNVtjdzBufxkg=;
        b=dmLulqpJb9jfSwuYdiy4MSDd/pq83D1R7+9RUU4zEuIXWL1Hl5aT3doFhfyZDmFoDo
         OSD/Ah7pqhLqelEnvEtG1IUrdg2eTKuMGDK0g1rg0xc4iGi9VXZ6imZ39GHncxY80RXF
         gv3PrpXA5KaJkYOvCAPWsBptGubhaiUUdEE0m+K50YeuIvlTOzGss92I5PQTTduLQeoi
         qWvY/zTmbgGugKmZV4xNrMiq0NzT6dsq2sdRFEqlISmK8OmKpH5KJI/g7w7KpJIy7z/N
         dAxPxaPNAnkenhN+BLv0i6l/7Tp0MDHz72L3fp+JlFFqXnwwrLZjWpBfB4xK7wmZurun
         GjOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Iqizygs0;
       spf=pass (google.com: domain of 3c20dxwukefafzmucyggydw.ugeudsfy-tmadl-dafmpyggydwyjgmhk.uge@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::24a as permitted sender) smtp.mailfrom=3C20DXwUKEfAfZmUcYggYdW.UgeUdSfY-Tmadl-dafmpYggYdWYjgmhk.Uge@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xtanV25xrlH5Z4b4M/FgQLpe0cuAqKCNVtjdzBufxkg=;
        b=NWAMv8if287JpNP6YR7S47s44RWoJidtP+ElMze87tc98YQZ1cDPZjYnEEG+tA5ZDk
         DCY5nsam4llt2wdRRLCqjV96rSSjRwgrXFpb/HycpuvrtNkUf+kL0FQUrZRLf1ZMlkag
         D9KdhW4EeCnLV0rnEo1AlDao1cw1dJaY9Do9A2EVhBFXXY8CX2g5NB+WheADTrtzzuq9
         XS8HjUBBi+a8MMOWtdzlZZjp1LlUx5+0ptscgqbHw8v2nov0IslqArRpi3XcNKp2PwPM
         isfVpt2TiTFtgnnqQspJuxEiu3vJshqp0doKh1lL+BIh46JxUcD1NltaOFjb4l2s+CwL
         BGeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xtanV25xrlH5Z4b4M/FgQLpe0cuAqKCNVtjdzBufxkg=;
        b=UP2075Si/JnpEakjemyNHFi4mS65rFTKpEi564XeKZvN+U37/27dbFeeG4Wm4Hn/AG
         DhP+gX46K343/owQdQPjqjf9Ova1fUjuTx+2esMZoX9oHXS7Imd5IMVFIi35Jg+wT0UJ
         WaXt59zhcTvJlsnZEDnQNVJiHt+e5w2wGni7ztyk1HtOLXUA7rwjNvxRXSJVOP7jWce3
         G8O5gwzo9ZF6mNme9mjfnMaomW/f5XwBmsKICmRRNK43Y8mqpIbe6n08LII7SrYls6j6
         0SL6MwGbOnVUETqjL5EoXQzWt20Hg4c+SwwwlKzpgZMfDzyO+H5LNhVed4Cdy0kkd6Bq
         ZSJQ==
X-Gm-Message-State: AOAM531F3GKJZ907gGTJSFIRGJCqa13zOCdUNr9AQ6tUPQWmZ4tUoRhF
	xPQwUOMGZfMZR+XYOmDdSto=
X-Google-Smtp-Source: ABdhPJz6Wk9aqMzQJV1c3F9k4u9h5FnQvXgeGnYsFeRtwwogvN9+pOC9B1sFJbBnJwhzvQAZbKxGBQ==
X-Received: by 2002:a67:338b:: with SMTP id z133mr2707735vsz.138.1594060044313;
        Mon, 06 Jul 2020 11:27:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:dc0f:: with SMTP id x15ls1079454vsj.3.gmail; Mon, 06 Jul
 2020 11:27:24 -0700 (PDT)
X-Received: by 2002:a67:1646:: with SMTP id 67mr27737498vsw.223.1594060043955;
        Mon, 06 Jul 2020 11:27:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594060043; cv=none;
        d=google.com; s=arc-20160816;
        b=xjqG5d77K65p55fSm0f219BGrXPRC5prEBZm5IkQI7c4w8LQUmcCW8Bb+piOQrKROH
         +X1VVKDGvuYEOKs0haFdVdIG132RXU1dbFrRAuudiVd2o45JzTlkO4k5wWeNvN046tnH
         Tn29/jZw/ZUyEB6uHS6sDpBmNK74jNAUIgh3OdQyrABnRslB5FOz15+goN4tPAW77hMv
         h65NSoZwWN2VJ+2MGM0xTgv9W0ieBVsLrvDaTRteokhm9exDjMlp8S/otR0tJWHkGeo4
         J6RPeV4Hf1N/skL9lYXVe66BKFTXJHzbUQKs22+vxKfPYxLrsoQOVcLHRY5cnN9fj88F
         fT4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=qqoupK5Oq6XKew6i6oyqJ6+pHqm95p/dfVqnR40LUaA=;
        b=ePgEmt+REy8qqB7ULkrtarhQQ5qiFasMKJKbbBAx2wUoNe+UbXVw7+v5KS60fCCV1S
         iSLlnMILeiB3SOC9T/qKwHWwplcm/p3tLDowXuHA6FTxOQ9a10WmNxFkc7TsCf5fRhMX
         /U8YijQRb4aqqPUKWb8DM3z0DEtTHgYsLeFbLUNZK81o9mj9Pb9PUSbbRTDeO1/MMjbF
         2HmsFA6WALjLk0InFfdDchf+AvH1mHXumAH2ihMwx0oHRTx6zJ7B+iE7lPz1wS+eq+tf
         Z/AdyMFIaYnB5BVCBPUQSJI8oO8E+nwEfKvQkNd8NhcNbwagoTINsBYVF9D0TRbzvxFj
         oYWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Iqizygs0;
       spf=pass (google.com: domain of 3c20dxwukefafzmucyggydw.ugeudsfy-tmadl-dafmpyggydwyjgmhk.uge@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::24a as permitted sender) smtp.mailfrom=3C20DXwUKEfAfZmUcYggYdW.UgeUdSfY-Tmadl-dafmpYggYdWYjgmhk.Uge@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x24a.google.com (mail-oi1-x24a.google.com. [2607:f8b0:4864:20::24a])
        by gmr-mx.google.com with ESMTPS id n203si720257vkf.2.2020.07.06.11.27.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2020 11:27:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3c20dxwukefafzmucyggydw.ugeudsfy-tmadl-dafmpyggydwyjgmhk.uge@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::24a as permitted sender) client-ip=2607:f8b0:4864:20::24a;
Received: by mail-oi1-x24a.google.com with SMTP id j202so12588789oib.16
        for <clang-built-linux@googlegroups.com>; Mon, 06 Jul 2020 11:27:23 -0700 (PDT)
X-Received: by 2002:aca:c683:: with SMTP id w125mr443202oif.37.1594060043510;
 Mon, 06 Jul 2020 11:27:23 -0700 (PDT)
Date: Mon,  6 Jul 2020 18:27:13 +0000
In-Reply-To: <1592531704.23014.1.camel@mtkswgap22>
Message-Id: <20200706182713.3693762-1-nhuck@google.com>
Mime-Version: 1.0
References: <1592531704.23014.1.camel@mtkswgap22>
X-Mailer: git-send-email 2.27.0.212.ge8ba1cc988-goog
Subject: [PATCH v2] ARM: stacktrace: Fix unwind_frame for clang-built kernels
From: "'Nathan Huckleberry' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: linux@armlinux.org.uk, vincent.whitchurch@axis.com
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Nathan Huckleberry <nhuck@google.com>, 
	Miles Chen <miles.chen@mediatek.com>, stable@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: nhuck@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Iqizygs0;       spf=pass
 (google.com: domain of 3c20dxwukefafzmucyggydw.ugeudsfy-tmadl-dafmpyggydwyjgmhk.uge@flex--nhuck.bounces.google.com
 designates 2607:f8b0:4864:20::24a as permitted sender) smtp.mailfrom=3C20DXwUKEfAfZmUcYggYdW.UgeUdSfY-Tmadl-dafmpYggYdWYjgmhk.Uge@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nathan Huckleberry <nhuck@google.com>
Reply-To: Nathan Huckleberry <nhuck@google.com>
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

Since clang does not push pc and sp in function prologues, the current
implementation of unwind_frame does not work. By using the previous
frame's lr/fp instead of saved pc/sp we get valid unwinds on clang-built
kernels.

The bounds check on next frame pointer must be changed as well since
there are 8 less bytes between frames.

This fixes /proc/<pid>/stack.

Link: https://github.com/ClangBuiltLinux/linux/issues/912
Reported-by: Miles Chen <miles.chen@mediatek.com>
Tested-by: Miles Chen <miles.chen@mediatek.com>
Cc: stable@vger.kernel.org
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Huckleberry <nhuck@google.com>
---
 arch/arm/kernel/stacktrace.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm/kernel/stacktrace.c b/arch/arm/kernel/stacktrace.c
index cc726afea023..76ea4178a55c 100644
--- a/arch/arm/kernel/stacktrace.c
+++ b/arch/arm/kernel/stacktrace.c
@@ -22,6 +22,19 @@
  * A simple function epilogue looks like this:
  *	ldm	sp, {fp, sp, pc}
  *
+ * When compiled with clang, pc and sp are not pushed. A simple function
+ * prologue looks like this when built with clang:
+ *
+ *	stmdb	{..., fp, lr}
+ *	add	fp, sp, #x
+ *	sub	sp, sp, #y
+ *
+ * A simple function epilogue looks like this when built with clang:
+ *
+ *	sub	sp, fp, #x
+ *	ldm	{..., fp, pc}
+ *
+ *
  * Note that with framepointer enabled, even the leaf functions have the same
  * prologue and epilogue, therefore we can ignore the LR value in this case.
  */
@@ -34,6 +47,16 @@ int notrace unwind_frame(struct stackframe *frame)
 	low = frame->sp;
 	high = ALIGN(low, THREAD_SIZE);
 
+#ifdef CONFIG_CC_IS_CLANG
+	/* check current frame pointer is within bounds */
+	if (fp < low + 4 || fp > high - 4)
+		return -EINVAL;
+
+	frame->sp = frame->fp;
+	frame->fp = *(unsigned long *)(fp);
+	frame->pc = frame->lr;
+	frame->lr = *(unsigned long *)(fp + 4);
+#else
 	/* check current frame pointer is within bounds */
 	if (fp < low + 12 || fp > high - 4)
 		return -EINVAL;
@@ -42,6 +65,7 @@ int notrace unwind_frame(struct stackframe *frame)
 	frame->fp = *(unsigned long *)(fp - 12);
 	frame->sp = *(unsigned long *)(fp - 8);
 	frame->pc = *(unsigned long *)(fp - 4);
+#endif
 
 	return 0;
 }
-- 
2.27.0.212.ge8ba1cc988-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200706182713.3693762-1-nhuck%40google.com.
