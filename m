Return-Path: <clang-built-linux+bncBDY3NC743AGBBAES4PWAKGQENZMLXRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B6ACCB69
	for <lists+clang-built-linux@lfdr.de>; Sat,  5 Oct 2019 18:46:57 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id b17sf7132498pfo.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 05 Oct 2019 09:46:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570294016; cv=pass;
        d=google.com; s=arc-20160816;
        b=TY0h24xlf7vRLD7Tl2fpCsGkD3P1qfEroQ7/sWWgVj2c3Rz337F6jPcqLGLEVNfzKu
         vFkGECu2mJ+3rfX4LPbCvHTyYzNmBtSzW9d983biOmESIXQCMoNAVMZ+ZeATBMxmnv1o
         r0ydA7WEwjNI3OREwlMOlYdcaDvrMoIuC9d76hMKFv6r7XW5n8q6BymZO5cw3S3s/1JW
         cI8ptI97cz0TYiy3zd1edA6++Ov8XemsjN164riGhavGUWu/4eIaeTMbYf5SIzQmmC+D
         7TjrZJbG6BLxuL94sFPVSVavisCJ1XBwUaP+Tx2DkhgdQBsacZp9TTe5i0ssHj31zZ1N
         0ZYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=Eoqd5mFlmEWRoztgOcAL6vCDFEtu4CMt0s55hLA5RcM=;
        b=Pjg3NhpPbMNxrpjLEXxmI+kXTXqrS4xngUEiG2h2zJdpUdtbA5n2Ayl38Xhq95ITji
         fUn5clKqhdBMXCZWHMcOckpLu4QJ5c+UOx/RKHVc6Da+16K+LSdTxHda5hn4vtVGx3Hf
         5xaegkOEup3hz5wbUYvGphvVjI5M3rfo8Lv90BUlVleYd+JBptyQwNBb5/kTDIWmeOEH
         7uczdHB19qT4nEipGrhNkKMkI5tXs0gUuLnmX1MR7u4sUm8ysmuQCihZPJEemnFF/2q7
         PAEyThcey9z9P0xgDCfX2dqBpIfT7boAatPwckVOxbBpthNhSI963OToOEnpRceKr0fl
         /gcg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.22 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Eoqd5mFlmEWRoztgOcAL6vCDFEtu4CMt0s55hLA5RcM=;
        b=kgP8Axl3FwNcJzbu13+jyEqj2dNfAje9337wY21YS+7ftSHrZjd2bDUxyVsAdWeElk
         kVn0X2Ah4VchJ63eS7EUqeMnqPyS8yBwYtoNpUjn8ngiQ9dMDX8O0MqHymXTS/pDJARE
         Cgai2iMSjXyR94gP/4jyDTY4owpQCPWo2HDYH6JgColicLJqGuNNNzXR2FkmxU+bcptC
         E53F6O9Icahx63lSLHn7a/LH+EY5+TH4HI8LRrYiFGXwUfYL7y9fT/c1ZBeYXvWPSIMN
         Pq3GYfktMSd8ertgOX6aKD/Kmculet5RtVCJqDVp+GQA/Kx+fahariDvfY07zixTb8Eg
         NDWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Eoqd5mFlmEWRoztgOcAL6vCDFEtu4CMt0s55hLA5RcM=;
        b=FaS1QcEqyzIjUNtKeFQLHdqS1JW8U+PJaRfrgvocYQGLOzyVr2KIe+emwv5Y70cUlH
         Jln3lmDoiXoLuFALuiwhoNjBXOQQCAK8ZA8cp/fNmm3WCcHHHgDZ0Pvmb+YHtpTxHy7N
         zox8LeXmBU5Gq3bm6bNN181wVmU+EpuJbEQQmsl839DQt1ehyfiTZarTS2JvYd9U03v/
         sfhYRcLpFrWvKQV/OfYOMIPvcRQ4Z6V/MkamteUrGZlcllseIGIiGbzcgFG5uNmvWTqb
         IsxC9+XHxxM890xEqNjk440ncm0/vYYzI4dfgQaoDAw/FVNf7Y9Aeh8ESbk2u2i5CGtW
         G4BA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUsXayhn9VOos2HvusMKCeloVc24feH84oDsmY6PNaWrg3gkAh9
	l/JsbwlI3lnteES9+TUURSw=
X-Google-Smtp-Source: APXvYqxX0foENDUblW2evbS6IcaQpJDVXywG82/XOr4JUQ8hRDijEZDHKY5IpEunTMfxyc2k8b/9LQ==
X-Received: by 2002:a17:902:7488:: with SMTP id h8mr17284584pll.278.1570294016214;
        Sat, 05 Oct 2019 09:46:56 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9343:: with SMTP id 3ls3211825pfn.15.gmail; Sat, 05 Oct
 2019 09:46:55 -0700 (PDT)
X-Received: by 2002:aa7:818a:: with SMTP id g10mr24021152pfi.41.1570294015887;
        Sat, 05 Oct 2019 09:46:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570294015; cv=none;
        d=google.com; s=arc-20160816;
        b=kGFvbNO+rW2Rm6uUesLLOuFTiDDX0bSdVN9pAYX78fBNjlPjp+ed0HjFOK5a9x2+f2
         TPdLFQ096wDZiMXEw1iykt/5LJlzh5932ebl0Ax0YBlQgTu3CmwoShiJ7ukcdCxyMmUg
         uAwEAFkjJJGDn4GKohpLq2O/M/WkG5e+o8AQst7vi1ZjGX3rhSNaanKpbM644XhL7AFo
         YBiJA/dJXEDvlVHNvQcQ60tBRa901g8feBB1twjo8FbOKOGO5x6EyhbCc4Smxp1Y/C6j
         IQvzf1kVcVzcTgdXc98GSEbfJqFw/olFko4H/BG1+1Aas7U+JXAOCjuZX4aPfrygq9sn
         ICkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from;
        bh=lPc+xMZnImz00r72eGy70hj+ezcWIfKqJvumC6u0ocw=;
        b=mb53AgLstFjdCQQpEFLL4T+Rjs263UyFwMyF6fGONcx8DlU8rymjZFU0aW4I0Jyb2N
         5TZkEovSY8mKZ8YPVhtqrnNBy/fNU+hMCrdeKI3z0/I2/aPa/2QBgwl8n6AgFAUTAtZI
         FroQzM6S+73i/QhuO9Qp4p6INYtudnqmnlY+f+rxk+L6K+hQvP2faYM7qIh+SHI8yQfp
         uFf0tRrvnSVO6U9vhRhTfKBZLuN3hI1X1+UpnsxppOEjcCsiUCkaUSOaIindT162Q+ve
         +7+Jg0aRn3Q4hwWs20FJeFD06HvXd8RyrfRUIbpYIxOfe15H9uDUUv3o2rewh35OYSE3
         Q3IQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.22 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0022.hostedemail.com. [216.40.44.22])
        by gmr-mx.google.com with ESMTPS id s188si492344pgs.3.2019.10.05.09.46.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Oct 2019 09:46:55 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.22 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.22;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay08.hostedemail.com (Postfix) with ESMTP id 7E52E182CED28;
	Sat,  5 Oct 2019 16:46:54 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::::::::::::::::::::::::::::::::::::,RULES_HIT:41:355:379:541:800:960:973:988:989:1260:1345:1359:1437:1534:1541:1711:1730:1747:1777:1792:2393:2553:2559:2562:3138:3139:3140:3141:3142:3353:3865:3866:3867:3870:3871:3872:4250:5007:6261:6742:6743:9165:10004:10848:11026:11473:11658:11914:12048:12296:12297:12438:12555:12895:13069:13311:13357:14181:14384:14394:14721:21080:21451:21627:30034:30054:30090,0,RBL:47.151.152.152:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:24,LUA_SUMMARY:none
X-HE-Tag: flesh63_198d491a4e5f
X-Filterd-Recvd-Size: 3579
Received: from joe-laptop.perches.com (unknown [47.151.152.152])
	(Authenticated sender: joe@perches.com)
	by omf15.hostedemail.com (Postfix) with ESMTPA;
	Sat,  5 Oct 2019 16:46:50 +0000 (UTC)
From: Joe Perches <joe@perches.com>
To: Linus Torvalds <torvalds@linux-foundation.org>,
	Vlad Yasevich <vyasevich@gmail.com>,
	Neil Horman <nhorman@tuxdriver.com>,
	Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Borislav Petkov <bp@alien8.de>,
	"H . Peter Anvin" <hpa@zytor.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Pavel Machek <pavel@ucw.cz>,
	"Gustavo A . R . Silva" <gustavo@embeddedor.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Kan Liang <kan.liang@linux.intel.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Jiri Olsa <jolsa@redhat.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Shawn Landden <shawn@git.icu>,
	x86@kernel.org,
	linux-kernel@vger.kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	David Miller <davem@davemloft.net>,
	clang-built-linux@googlegroups.com,
	linux-sctp@vger.kernel.org,
	netdev@vger.kernel.org
Subject: [PATCH 1/4] net: sctp: Rename fallthrough label to unhandled
Date: Sat,  5 Oct 2019 09:46:41 -0700
Message-Id: <2e0111756153d81d77248bc8356bac78925923dc.1570292505.git.joe@perches.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <cover.1570292505.git.joe@perches.com>
References: <cover.1570292505.git.joe@perches.com>
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.22 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

fallthrough may become a pseudo reserved keyword so this only use of
fallthrough is better renamed to allow it.

Signed-off-by: Joe Perches <joe@perches.com>
---
 net/sctp/sm_make_chunk.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/net/sctp/sm_make_chunk.c b/net/sctp/sm_make_chunk.c
index e41ed2e0ae7d..48d63956a68c 100644
--- a/net/sctp/sm_make_chunk.c
+++ b/net/sctp/sm_make_chunk.c
@@ -2155,7 +2155,7 @@ static enum sctp_ierror sctp_verify_param(struct net *net,
 	case SCTP_PARAM_SET_PRIMARY:
 		if (ep->asconf_enable)
 			break;
-		goto fallthrough;
+		goto unhandled;
 
 	case SCTP_PARAM_HOST_NAME_ADDRESS:
 		/* Tell the peer, we won't support this param.  */
@@ -2166,11 +2166,11 @@ static enum sctp_ierror sctp_verify_param(struct net *net,
 	case SCTP_PARAM_FWD_TSN_SUPPORT:
 		if (ep->prsctp_enable)
 			break;
-		goto fallthrough;
+		goto unhandled;
 
 	case SCTP_PARAM_RANDOM:
 		if (!ep->auth_enable)
-			goto fallthrough;
+			goto unhandled;
 
 		/* SCTP-AUTH: Secion 6.1
 		 * If the random number is not 32 byte long the association
@@ -2187,7 +2187,7 @@ static enum sctp_ierror sctp_verify_param(struct net *net,
 
 	case SCTP_PARAM_CHUNKS:
 		if (!ep->auth_enable)
-			goto fallthrough;
+			goto unhandled;
 
 		/* SCTP-AUTH: Section 3.2
 		 * The CHUNKS parameter MUST be included once in the INIT or
@@ -2203,7 +2203,7 @@ static enum sctp_ierror sctp_verify_param(struct net *net,
 
 	case SCTP_PARAM_HMAC_ALGO:
 		if (!ep->auth_enable)
-			goto fallthrough;
+			goto unhandled;
 
 		hmacs = (struct sctp_hmac_algo_param *)param.p;
 		n_elt = (ntohs(param.p->length) -
@@ -2226,7 +2226,7 @@ static enum sctp_ierror sctp_verify_param(struct net *net,
 			retval = SCTP_IERROR_ABORT;
 		}
 		break;
-fallthrough:
+unhandled:
 	default:
 		pr_debug("%s: unrecognized param:%d for chunk:%d\n",
 			 __func__, ntohs(param.p->type), cid);
-- 
2.15.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2e0111756153d81d77248bc8356bac78925923dc.1570292505.git.joe%40perches.com.
