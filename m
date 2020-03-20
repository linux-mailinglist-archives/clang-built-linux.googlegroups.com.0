Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRB25S2PZQKGQESI7ZU2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A9A18D1C6
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 15:55:39 +0100 (CET)
Received: by mail-ed1-x53b.google.com with SMTP id b12sf2338076edy.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 07:55:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584716139; cv=pass;
        d=google.com; s=arc-20160816;
        b=gsqfNdH0mI25Vypc9pRLNQ+AuMyJYrctIokE8GtbuGao7vqNacFiOaSqknBLdfe56X
         7j7TVPdDm8QoElexRaS98Mhv8QYgD+vUAB3Eq4g6iNqhewBsCzxeq5qvbahXjBybseei
         +IvmF9oZi2HOfQ758qKZVE4ySxHRUjcRpqPnXGMjAr7maQ5qrvaAcOaZHIKdFbR+z4/e
         nLJ9hs8+opQsTwjC/EyokJG9JpLOX6/7vyHH82b4NBtfttFnlQUEHHSScvRX/TqXKa37
         oBtxDO7lPFMlJnZGyRlF+3YnN6rcYwYTVQT9hOKv4i0yi5slh7iWgPcwcCrNO3b7cCMU
         IvPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=IlekGEBkvFNDWSrnHhmdupqEsx5l4t8bi4VFc0agWX8=;
        b=cyrQDx4+PLIBO35/joGkBzD6yaY783Ej0WlD2Pf3AgkPxqyS1fMv/OLIPkQu9pxiQk
         1UAeoIwdpkIwUahmiXzuKeQIQmaYp29fCHH+KLwG9lZqJ7EMIM7sv9PhzhDuW96GhP+u
         PwX6h3yBLRA0/+j32nABv3s0zM4Ew/6ERe6+drTxUslVZDt33PwHvr3dnyS/1ynJE32d
         PcG5Ok10X6AqdpFs5R1TK4G/PHV+g7v1f5MqKS2F25jQFFmNw8ZsOfvShTZQ54sOtfek
         DTzm43PSvKcGmiEjQfqkivh+8EFKEHtChg3Afnz2eq2hgoyiaLBzgmIk1XAeSUYSUly1
         /8tw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IlekGEBkvFNDWSrnHhmdupqEsx5l4t8bi4VFc0agWX8=;
        b=a9i7ycSnpI6hYxHZtQArF2cxXr8Euts/H0X3Zz3rWRaRnzhE6VwaFGItXHs3KXHDZm
         y0fjW0tyAK1gXbqwY4WJIKNTUIbRl9/eqF/uMFpSG0cyWjdzoHjAsubpBzOXaSrTqxh5
         jhHfZAxOrz7CA56ZH0mXf0wZh46d3HIIYVcybJ/3OUfs3uRjWsH8WA6nv6+tZM+YqsFF
         gw/Y5eRC0vkIUwubPL4DKkSsp4rXNWbtESrDm/Si6TxZlLS9iOr7EqOSBQPkeM4sSF7Y
         JKOK/+mHE3dLZ5BZxjP1mr58kr9uQaucBzwNYVvQsWJ8hguI25Pw8hrv3bhYqF4ZT7fU
         OV7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IlekGEBkvFNDWSrnHhmdupqEsx5l4t8bi4VFc0agWX8=;
        b=jfaMRJc3PJRxR0Sa1gsrYAVnvQR/0hzaF1hNDmP1CNsBpenl+0+uvz90taLhIp9qc2
         JoPm9nmDGBqGI5e9oy2rRlrZyi0OQ3YIkCl6ZFsh9xH2nDbZVi2y1CKtMdBINeu/03fD
         dn2k5PP2X34IT8nA00/YHFgWf5d1uz5db1dp9fl2PP24fVenRSGQTQ5WbfZ+AGwU7OlH
         rbdUkLWs4waItBaqSDV/lSxJLqDMxnSSc8Ghg2Jsl719yPycyfxEWKPo2AAZuY3+U5/k
         /sjThGP+ZLW+kO37FdoeY2J61d6rakH6z0iP4fANIbtc2k7uJUPAatWJb/nh53n5uMIm
         AtlQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1HHE/vaIkj/RL1mpIxOcTsvtMsn99byhOfE/XBi9M2yztPUzUB
	pJ2kWmnOnquc7zQNWOE+eRE=
X-Google-Smtp-Source: ADFU+vspCinwhxP3njShfzq7mHLrIF1B8dEcJhHw2jctVEe9ErasqM0sQWYYRZsudG51iAV6/r7HSg==
X-Received: by 2002:a17:906:1181:: with SMTP id n1mr8803052eja.218.1584716139299;
        Fri, 20 Mar 2020 07:55:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:f102:: with SMTP id gv2ls3156872ejb.0.gmail; Fri, 20
 Mar 2020 07:55:38 -0700 (PDT)
X-Received: by 2002:a17:906:6548:: with SMTP id u8mr8787575ejn.290.1584716138827;
        Fri, 20 Mar 2020 07:55:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584716138; cv=none;
        d=google.com; s=arc-20160816;
        b=oGsAUw+eYpURg8L4yCrF8iGW9Z334EXhHujWbEh0OyY5G+pzD/SFp/oD1i0lpWz2Ng
         8XXHqJEdoJOdFz1ZDG8ABvLi66AiZUJRyHl65yhuPI24MIWm1pvEm30L5UEFNS4Dxnrt
         ECwudsSW48vqnP5pnbrsJTj1Q2dnoyxiw9Y3eQoGgMqnghkuPgAL9duAU3m5iyoFgKQ8
         3agpliqk39oRQqaXj871pTuOk0SAxJvMgt1m7GIYRPyZJY4IR1aRNVLduxRBIRaNq4Vl
         HrS44dWh3Re6qQ9c6VuRL0rHypsLd3OlvrANGBZqT9dP2QivGqkAT/Sk7NJxxHmUGtZB
         DKGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=+XT/Ggmb5iCSA91ILbc1CBNHo5HVyQjPuJuT0/OJUWM=;
        b=AajGNRmTai9hGf03+z7eJGTPTyW728Ok+tH9VqDM91Exp9ze/wZRMlUiqpAaA0HZKQ
         2AEN3J+jZUttBgB9tG5Mfr55ukz69xjdUKxFShenf8HiGZ7C9f9nfps65bePPvMmVumH
         e9LYJ8KgvbnxBqLWSnOAjnmC5wb/JEroFTIbfJKYU4d1MYniJ99PunEWy1GZtOuF/VrC
         wOYAX1Xq1kFmL7wDAZTkY+0218pt5oOmULnrZxLgZud0pSuUngiBjpCD+3AJbj+qTwGN
         BDvhNuEZX4TdycIdnKi5HOupFb1An0DH+vBnJI4dM4lLc34WgEu70ac6kL47r5T4H9tM
         Rb3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id cw13si326896edb.2.2020.03.20.07.55.38
        for <clang-built-linux@googlegroups.com>;
        Fri, 20 Mar 2020 07:55:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 38FDF7FA;
	Fri, 20 Mar 2020 07:55:38 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 436313F792;
	Fri, 20 Mar 2020 07:55:35 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-mips@vger.kernel.org,
	x86@kernel.org
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Paul Burton <paul.burton@mips.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Andy Lutomirski <luto@kernel.org>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	Stephen Boyd <sboyd@kernel.org>,
	Mark Salyzyn <salyzyn@android.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Collingbourne <pcc@google.com>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrei Vagin <avagin@openvz.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marc Zyngier <maz@kernel.org>,
	Mark Rutland <Mark.Rutland@arm.com>
Subject: [PATCH v5 17/26] linux/elfnote.h: Replace elf.h with UAPI equivalent
Date: Fri, 20 Mar 2020 14:53:42 +0000
Message-Id: <20200320145351.32292-18-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200320145351.32292-1-vincenzo.frascino@arm.com>
References: <20200320145351.32292-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-Original-Sender: vincenzo.frascino@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
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

The vDSO library should only include the necessary headers required for
a userspace library (UAPI and a minimal set of kernel headers). To make
this possible it is necessary to isolate from the kernel headers the
common parts that are strictly necessary to build the library.

Replace linux/elf.h with UAPI equivalent in elfnote.h to make the header
suitable for vDSO inclusion.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/linux/elfnote.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/elfnote.h b/include/linux/elfnote.h
index f236f5b931b2..594d4e78654f 100644
--- a/include/linux/elfnote.h
+++ b/include/linux/elfnote.h
@@ -59,7 +59,7 @@
 	ELFNOTE_END
 
 #else	/* !__ASSEMBLER__ */
-#include <linux/elf.h>
+#include <uapi/linux/elf.h>
 /*
  * Use an anonymous structure which matches the shape of
  * Elf{32,64}_Nhdr, but includes the name and desc data.  The size and
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200320145351.32292-18-vincenzo.frascino%40arm.com.
