Return-Path: <clang-built-linux+bncBAABBIET47ZQKGQEP5UZ3DA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 3903B190800
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 09:49:38 +0100 (CET)
Received: by mail-pj1-x1038.google.com with SMTP id t17sf1858182pjr.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 01:49:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585039777; cv=pass;
        d=google.com; s=arc-20160816;
        b=q6BECSsBrOzL4noEXvvNwBYlCf+CpVR1yhtVvzlQkn3lE3R/1RGzTLDdHR+YL7VH0U
         MDo8BV9IsOHk4Bq10YVnmnPOsAYFxUdw3KcKyTmPIjmmgDjPDFG3IUYtQrABc7EV2g/S
         ulOirvrKSo9FxDpikZWzwCRpQ1o0ZeRmbTLtQMZ90sUp/N4X26Qn+XtstB1gNkXHTN2n
         og9clwVkm3tuGsIMBzi4mR16pqHRtTQ+aXVMI3SRVCLvXDmIMTU7YgrODLU86eryPtuO
         iB0PkTcum4HIKDi8K96SNKnmU5KZHcZopaprhT9iQILe5/Cl0pAIWgUiWrIpq4AF/f3x
         0ALQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=vOMl/ock8GOUvL7f9cdg3z+In/3KOoqaVFk+7t4Vglc=;
        b=obqNGdr5kBb4GB6yq5BdOE3vlLev55lUHmp7jvjOAiQE0fPqjdbHWrNoxWtye9XK/1
         +v8jXHp/ayUXAa8lfy/5HlfTWWo3wRNFpCzmwyrDCjHs4MS1GOc+PzH8y2WfTBugZAJR
         gtQM+PwynvHhrd5FxSCMWpcH8NyilhbJG+AStx0fvFZ8xGGuqWXWac5iSFTJCxNpZJ9F
         TBO23V4yFkXavnbx8L0HWGhsisXmpaTIIeKj3V3UKaQU/CfwFeoVGcLvnfHKPjTMajwR
         CZDh2f+tWkxjWe47ojlf1HApsf1Rdy+dOd/eCuj7S7bFcEQhhlmXPzglguYyf7eTC5k8
         aNwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=dqipl7rH;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vOMl/ock8GOUvL7f9cdg3z+In/3KOoqaVFk+7t4Vglc=;
        b=MqTMcBiCXXXE8ZC61bcM5aseV2Lq/Mc/NCS+Z8C0o/mcFfzsHjZp5YLsZg1x9CODUu
         ymZ36iQ2n0LuMxwpXcdY5YDGOV6j4twGTy8+ZPctAtyQEythl4v04j5GfyDZY0CcZzVD
         CTFv92Nwm7qSJDkPwhUE/eFIZtf76mugITac8RDXtVRfaxvnrXjh92A2D6kbzuSXKkfU
         4nh/GCFEITCKUCINFr7A1ywrVpVwFDvZVNV1IWn4Po9iK7FJyaMxtUOREuj3z599xuIf
         nLHr9dZOV3AHWiiZOWGlkOY3V18fEuQQ5K+I1esITO73s7Q3G2H5pToiHJUWIcoXLAZ4
         Reww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vOMl/ock8GOUvL7f9cdg3z+In/3KOoqaVFk+7t4Vglc=;
        b=YQDYv784WkdsccFEDHYpDbv3Yaq0fSAc+i5RvwNxqhCPhhtopvMm/5vnUMAR4AAXco
         jQqtMImd6BluF4eS7edwxyQO5c0DwU436p58Fg97q4GXj/ZrA6+Tk7y+eUcY/wRt7nVm
         Q+zr0BK1wNlOBrpozy+sRFZDtcXAfz2RjyY/5bDcv8BuXNedBYGTquydwjxqAz2CeQHj
         JkP9+D+SNNL4TYKQNp0SMNFxEBnqHi7eP+Rp7nKIUmFuxlvp8FyFzRncPcrV4g7R7Jzj
         eV/zOkN6gLSJnPSTwuLQ08dNx6KQe2I0TDE/mN9cYtkYzlK/M4o/TfIpa7kQEx1MZO0V
         lYzg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3NKYed/cLkycuCa81KR6Ei4cpryo+wsuTVAF/PqHCfkNiRSA0k
	H7+WTBcGlu3S1SxJi/FRtSI=
X-Google-Smtp-Source: ADFU+vtI50Aj1pnVxG8G27nyKN5p+o/DTW7kQ384Gnvg07OMfRRY5JXlBvqtJL01zCFh9tZ3wODCXw==
X-Received: by 2002:a17:90a:e50e:: with SMTP id t14mr3952124pjy.98.1585039776894;
        Tue, 24 Mar 2020 01:49:36 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:d78e:: with SMTP id z14ls1511295pju.3.gmail; Tue, 24
 Mar 2020 01:49:36 -0700 (PDT)
X-Received: by 2002:a17:90a:d3d5:: with SMTP id d21mr4126429pjw.27.1585039776544;
        Tue, 24 Mar 2020 01:49:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585039776; cv=none;
        d=google.com; s=arc-20160816;
        b=KkNQYC9nEeOlm/2dZP3P8Vet9qGyOZVGWVhRoDJMvBUqI70bJI7HPImjTcjsyIyI/B
         N3F3H9rXkouIlGz8K14dMDm7tmp2uiBpo6z+wedcxkDd4tcbU/xzJu3U30YXFAp+5qc5
         24uSbMRt1i/Swa6DeG7jDneszwobPp2/kNjkBKVflmT4O02+p2n8wZEDd1ch0Fy+FmE0
         CL+qoYl8v4zcGPVG95zuM68Ag9pQM9ABj6B58aynCiKkVhDdOEeD5F4LedtnYr49gGRJ
         5ZAalmsINl9LVq5olhjdX6zRaPGkrXBC5+SfG/yQIZ3lWbV5dUjsuoQX9BrSwix9IOpU
         5vgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=FqNgRiTBfIYxlDlBeZgqdHunw+p1cDDhJa4wa3yG6eU=;
        b=YKr2TI1yyHaKM+dNvofelUBIOf8rw591ls9yxPzl8XxAMlDtpEJCCxq4aQCuCtow2v
         6zd0EXKw8hybj13spNKo+xp4r6JujBjSbBURkYKZwFnLXR/AS9AH3d8ytEx7cie4y8Gn
         jtpqwXulplwdXGnfptM8k9rtJTRvUhXTtEwylFxsXMDT8uiteJeIz3p6X25QcaeddGVM
         7aX0a46dIuAEGOXGY9RBLRpSQZmMREOUoLgh3Ps45jT+W3x6CemmTi0SfTPnXDT+ugDv
         LxznalZzHGl7y+n0fUndV7I5UQKbTky7yWbMr8lLTSUJyxoEzlrJAleaeBwOwytxS932
         zFNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=dqipl7rH;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id y5si599883plr.4.2020.03.24.01.49.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2020 01:49:36 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from pug.e01.socionext.com (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 02O8mgsZ011219;
	Tue, 24 Mar 2020 17:48:45 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 02O8mgsZ011219
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kernel@vger.kernel.org
Cc: "David S . Miller" <davem@davemloft.net>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Kees Cook <keescook@chromium.org>, clang-built-linux@googlegroups.com,
        Herbert Xu <herbert@gondor.apana.org.au>, linux-crypto@vger.kernel.org,
        Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
        Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>,
        "H . Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
        linux-kbuild@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>
Subject: [PATCH 02/16] x86: remove unneeded defined(__ASSEMBLY__) check from asm/dwarf2.h
Date: Tue, 24 Mar 2020 17:48:07 +0900
Message-Id: <20200324084821.29944-3-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200324084821.29944-1-masahiroy@kernel.org>
References: <20200324084821.29944-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=dqipl7rH;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

This header file has the following check at the top:

  #ifndef __ASSEMBLY__
  #warning "asm/dwarf2.h should be only included in pure assembly files"
  #endif

So, we expect defined(__ASSEMBLY__) is always true.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Acked-by: Jason A. Donenfeld <Jason@zx2c4.com>
---

 arch/x86/include/asm/dwarf2.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/include/asm/dwarf2.h b/arch/x86/include/asm/dwarf2.h
index ae391f609840..5a0502212bc5 100644
--- a/arch/x86/include/asm/dwarf2.h
+++ b/arch/x86/include/asm/dwarf2.h
@@ -36,7 +36,7 @@
 #define CFI_SIGNAL_FRAME
 #endif
 
-#if defined(CONFIG_AS_CFI_SECTIONS) && defined(__ASSEMBLY__)
+#if defined(CONFIG_AS_CFI_SECTIONS)
 #ifndef BUILD_VDSO
 	/*
 	 * Emit CFI data in .debug_frame sections, not .eh_frame sections.
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324084821.29944-3-masahiroy%40kernel.org.
