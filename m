Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBRXPQGEAMGQELM2MWSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EDF93D8118
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:16:55 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id t7-20020a0568081587b029025c900aa571sf364357oiw.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 14:16:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627420614; cv=pass;
        d=google.com; s=arc-20160816;
        b=H17zCadlXe/WQMOb2PqwZ0kmJmZxb0JOK9/5PWbbKicxGfp7DB6s9C9u3W78mPdBuD
         uwkK2wBQAmL6b+sGGwHnwfCdbCwTCbhumERwgBP/oBpc8Y9b0QctXHCo9Z8dlVb6ppSf
         JhO8e2TQeTg+YcmBUqI1pUc0ipTrRIjrmGpcucTcPcJ8GpRxjVOuODcnZ/qBpZzshqg1
         aAdx39EXHG2EoZeftnMN42rdZoNHhYsv5XOPfi+W1OrJmmUbVTBBH97o5Q2An8rHxzcv
         K7fJP+TegRCwc2EBzXKc+6PC3shAe8SgSkIIDElCHuWUOEnzsj9+GT0qibciyNKuoTSU
         VG/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=953XWPoNDXGRtN5XguBt88KR0Yd+baCIjl1/QpWqyJE=;
        b=EUEJ0gGojEg49F/aK/2FvdkNBeM1wmG+DsythyytFYRYaTkoVsUwVwQhrCxRm9SRHO
         Zap8PLtN2v3Jl8A+83CNnejCUCCcD8+2NKEUoPWef04lFW/c/EAODoTf8gcCysigSiOB
         E+7R9Y7FpU9uUW/mDgYArsFAoeJKxcTWEGfyPr9n3Ze4CwSFHw4DMgppT0RvRR86pN08
         j6V8lK9YQJou2tc3jQO4IwoBaO67MxL0qbTsvttG3YaFfKXu+a6rAKA4CD3dAb4VVRby
         gtIESWGOEkEuMGisU4RQDjeKlNcwS5GPhCzXgyayR4k9wJCVrf1n1QfAQQGPYsWA4FxS
         EZwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=bRfqHarn;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=953XWPoNDXGRtN5XguBt88KR0Yd+baCIjl1/QpWqyJE=;
        b=oWzFHdkycMALoVojuJSQF7Hv8+aTGsRYAKt1sQmw/L0eL5gpRafO+ObTsh5CutRUv6
         hYjmbhSEhlcWtW+/TSqQ5mJUhVLvj38D3LEhfMMYCG7SOMxCp9RPH1A+bY7fG9oUzisn
         MCPiiy9r63r3QK7UCBYO+dK24FzsBFjBT1exjQopC3HHEuGIQWqSitj2kdX8DHNjwX9f
         g7HVBsIFn7r7Dx5pDpl1k1fLBrUhR5zSfWfMM+89NepTvXlrOqm5vdqXSJDEyhIOLrKi
         booorYEDpnYMlFG31Ftwn1KIlakqkp7PyRzdFeMI3dwPfgA10G0Laa5yt5nEKcizfJCS
         Zilw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=953XWPoNDXGRtN5XguBt88KR0Yd+baCIjl1/QpWqyJE=;
        b=JOD51LROYSpVZGr/wgyAs+mtOm1Dw//4Yc3i3NBBT/usvSZiPWwXjNEiDTSimoMyP+
         yh87nhN4fOiC9/kE9Lmtl4ewLGhB46REnJxx8qT4v+KB17IKstVqeczbgjCRk9ouD/I0
         hjZn/Uy2O4VRgOh2IVMdxyfjBMGumi5cCVGQ0VknxJ+5rfpf1oKiPKnkIN50B27MUtWJ
         4fx3UU9aUV1b7zsVAsNAYZjkXpfCdZgSa/F2iVOrK9HMEUO5dn+35hy9dcy9VchqNYI1
         o/9qvsJiCDkYevo8IxdDfZvOLfFjeTdYPTyaJEeIbAb4L1by0zZddDjW+XwElkUsTUyA
         4fWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532yuELH9JxS0B4z+Z0R2VW57sL4/ihRuxLk+wf9636BQ+NsxbRq
	8NpSc0foBzaWClUbqNlrlXk=
X-Google-Smtp-Source: ABdhPJx7L7lltinQ6cWLVeznjfHg7NplOcQrJ9vrwJAYR9DgQiOJi8EhLdN/OjvUzHi7QNQEd+BIDg==
X-Received: by 2002:a05:6830:23a7:: with SMTP id m7mr16915939ots.17.1627420614070;
        Tue, 27 Jul 2021 14:16:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:641:: with SMTP id 62ls75912oig.0.gmail; Tue, 27 Jul
 2021 14:16:53 -0700 (PDT)
X-Received: by 2002:aca:fdc1:: with SMTP id b184mr16068175oii.101.1627420613691;
        Tue, 27 Jul 2021 14:16:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627420613; cv=none;
        d=google.com; s=arc-20160816;
        b=KblIUTO+fYfEjXZr4l8HkVqpl+wUmnItE3k2h3KfqiCqHPPjLKlMTnu28lSxJiVnA1
         DkPNEInoef6S427tvn22KqJ6TjbhrXrbK2I6DuN6K3e/oDyAdY9XD2y04z9EyUIrPrT0
         kfTiR7eZz9ufyRnbKaATR0ghrJTLoHGYRrVcC0r8JSkiW1mlpK03ARTDzUWmLRNmeHLI
         7oeew/pop2LtlPIWT466pijR3mgsGL244Y1JPqzVzmgFn6XzY82/EgL3C10VQDmhkdVB
         4tYNaxmdYWIXBmB1a5ZI8InVayfH0Idkya5iaUY5+EYJkJL61kYppUIb026KXZiFMlNi
         hEtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=QuYl5+rTP/+R/3rDjAm0Jnl1lTT65zBH39RH5WLEAR0=;
        b=QXw/zJUPb+ln0JjXJAc9g7gzg7wwge/rfTnaWsrkGdADEf4xCSDYy8WuTgWUZ0ZsMd
         noeuUyyVTsto3mM/RY55WNvnSbIIYcmytWsQ+HSTGpQhtFoNj3vo9jNU1qi2I/5aYOth
         at3pnoCP1lIjk0Kihu+GXC/IwoVTQ0T0PwHGAKuU28ISFFpKSt0qrEgLmaa7joQMn8VP
         hEk7jHLTPAKmVbVFEAT8JE8Ly0MN8cX+P6+QQyL7DVMqAGR8be8JP3OVqVDbf6WZmEQh
         pvrjAGPzggDJ1lnoOkSLULMrmuJ/RAV4/L9e8Cbo5d/vXo3Bh4XOzP+W2DxyqYf8Pspu
         Vf+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=bRfqHarn;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com. [2607:f8b0:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id o10si407055oic.3.2021.07.27.14.16.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 14:16:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b as permitted sender) client-ip=2607:f8b0:4864:20::62b;
Received: by mail-pl1-x62b.google.com with SMTP id e14so39972plh.8
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 14:16:52 -0700 (PDT)
X-Received: by 2002:a63:134e:: with SMTP id 14mr25120786pgt.312.1627420612398;
        Tue, 27 Jul 2021 14:16:52 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y9sm5034698pgr.10.2021.07.27.14.16.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 14:16:50 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-hardening@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 36/64] scsi: ibmvscsi: Avoid multi-field memset() overflow by aiming at srp
Date: Tue, 27 Jul 2021 13:58:27 -0700
Message-Id: <20210727205855.411487-37-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1097; h=from:subject; bh=Nq1NUVDlF5HB2sL3wLI4PgmWfjw6IdyQL7mY1ITGnck=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOI21reOQg8BrkfHddEuElFGDIapR2heYw3xo22 cpdsHDuJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBziAAKCRCJcvTf3G3AJvhsD/ 9f+BKlmaFnyRZQcn1rlNDY2vh+rNTRxOLWqPkDfUPDZZ97wHv4DBEpdLaXiuhCZf608S+816myOXX+ nT5UFOcdgLS8KSNQsCYAiZ8y6i6Tg4+eSRQunUnuVzVL3O98L0xqB46WaeeYx70RA6j5DnKbLOchNN AjaSeeQx0pnsg9cSycqn8lvZyqETRhU90TKbfnJtqIX4NEONgrTzdm8ZKbhe4RYUabvOxhjbiw7+j9 yYitnuR8to7ti1pifqARyJJrmpvyFicfspMm+frwRLM1W6LA/s7nG8iAQ5sTn/uzoB9cCj+SweTPkR m+AsViv0F1qTlCBahXchUqn2qo8JD0BZvitJ3EW1JR1OuFzTXkm4GT0+sh7Nv+hcTpQyriLzuTKuzz 4K32VkFr/Ngh4JofcvGrq47NeW+rPy+OefZwviXvKsNZmypkxuWROPihUMZHdjHbE7DCVwLoKFC64l rmccyM+XL5CwKYV01CmnjIZnKBVjuCh5PKcGpt7afr5ogG6tc2TUnvcY8lifwBGzsgS0nVOPT47wjG me8YQ4+eL1qJGzSl6NZ2krfvFMNxWRLa1UuLhO6PDmXxr8+1VYVWWQltkkcbKYEWarHuOvOxN+DOaB KeSbdbqc2xxk6w2cz+t6Eez7On01QP+vgWhE9arlnKCLSEH75mw7tmX/ZlrA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=bRfqHarn;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b
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

In preparation for FORTIFY_SOURCE performing compile-time and run-time
field bounds checking for memset(), avoid intentionally writing across
neighboring fields.

Instead of writing beyond the end of evt_struct->iu.srp.cmd, target the
upper union (evt_struct->iu.srp) instead, as that's what is being wiped.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/scsi/ibmvscsi/ibmvscsi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/ibmvscsi/ibmvscsi.c b/drivers/scsi/ibmvscsi/ibmvscsi.c
index e6a3eaaa57d9..7e8beb42d2d3 100644
--- a/drivers/scsi/ibmvscsi/ibmvscsi.c
+++ b/drivers/scsi/ibmvscsi/ibmvscsi.c
@@ -1055,8 +1055,8 @@ static int ibmvscsi_queuecommand_lck(struct scsi_cmnd *cmnd,
 		return SCSI_MLQUEUE_HOST_BUSY;
 
 	/* Set up the actual SRP IU */
+	memset(&evt_struct->iu.srp, 0x00, SRP_MAX_IU_LEN);
 	srp_cmd = &evt_struct->iu.srp.cmd;
-	memset(srp_cmd, 0x00, SRP_MAX_IU_LEN);
 	srp_cmd->opcode = SRP_CMD;
 	memcpy(srp_cmd->cdb, cmnd->cmnd, sizeof(srp_cmd->cdb));
 	int_to_scsilun(lun, &srp_cmd->lun);
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-37-keescook%40chromium.org.
