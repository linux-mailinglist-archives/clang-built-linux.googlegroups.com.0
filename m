Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBOGK6KEAMGQE5YR5DHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A5B3EFB89
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:14:17 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id z14-20020a92d18e0000b029022418b34bc9sf669929ilz.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:14:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629267257; cv=pass;
        d=google.com; s=arc-20160816;
        b=DWIfq85DO616Q46r5NupO8ZWpFwFacfNWgTBIgEdZbz+9hFnOGkt3DpJOthrcHUs/z
         dzXUekjhXMy2XEjcYhJXc9uxG/9ycXKbj4WRCF7LwpL/SX5bJH1YFrnzTqx3OkGuX0y4
         RUKuH+pOQQAibyyWUHGjVw5reNgxfqA5Bb1PUHDuLx7mXNdTfWKhbDhhddHA4vt6i9HJ
         SHhzAK9t+NFqTP1GQrZyKQdcn3Irp6Z/PaXkmZWnN+WnPmZDkhdIkwcftBD4/HBO93S2
         Gtx2SQ5YI2zcHaIdzzGdptJZK4IDBU3+GvbcIsc+CKQnp5yGidoNiIGubnoIALOCkIjt
         YGJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=PpHB6Tos5J0Mo7WE/dq52se1/v1Ysez22/ouyXmKFF4=;
        b=HVAzc/LMxbiDjn4G2dWL9jEb9JOZe9Ghsn3rO6CcWwQec3gouZlJLSM7KkE+0YTm9h
         q6Sf8QidHbo8d5TAR/2L1nDKaatOa7mZ2r5sDG+j0GUhZDLbO4vbO5fUhpMvFAFsHMpX
         byvBFqA/2XE9QrthDTImdym9ufiVVbTDWegfVlyB3XPKI7+Crb9Xsg098lVB4ukbKQRa
         SGO3nnjMid7/ypNHaRqInXYUP//D9LWLI7+9QNk4PSAtI6Gh2hwEK04uWtPjmJgiX8Kq
         apAxJ4XgdhnmBwrXvhA0Ok/bJjmuBVN+lth3/ymaZne+ZzQoCC4SmK7wj1+LSD1tKZ0I
         afdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=FS+HfMzV;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PpHB6Tos5J0Mo7WE/dq52se1/v1Ysez22/ouyXmKFF4=;
        b=Nw/CxRe6qUsyw0cR3VUbkKEarAd/7OOLcIVTdO4iHd9ITggxeTx67zayMwl8ZAc9Mt
         vxaZHq7KZ9CX9evDMAIW28KAQihu8yQs24++XdaIl8dH8ojFz7KyQAQYdmkme9pjtI1M
         4wEjNMMMSLCHoF5+ilCe7c5MW7JAT93rgVc81I/I7FiYLPqC6RXPiy06vqG5FS7ftqtm
         BZ9FXmT/+i5tU1RZ7bTs8PrdgWg0CJUpr4eH06TSU/gQR/gkDaQD0gzW8rd5R/ycpqec
         odiUkkeYPY73xdF7pKL3WeZxpETY3+TnEzAOBDZ8il3QQNv7PTqWKdvFkuwKcahcXesV
         G99w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PpHB6Tos5J0Mo7WE/dq52se1/v1Ysez22/ouyXmKFF4=;
        b=WeXmZGXqocDYXoFOrr6etfO37MSmbT6NIrAIp3R4plpxLidb4+1vZfyDeGrDa9pnZu
         KPB/T3BUKx+vpW21DrbE7F8+ssSfSKKKaFhR0Ya2kNb+nz7D4QZYaU25J9erTyP/TmZb
         KO48hi8ng0axY5dHjShSFf3Uq5pLOA9X6cIEG0w/fpBnQj4xGKNajZy2sDWzwtcqEtjV
         aALUGM45e35PcdJ3thOQkFCZYSbkVxAdQzxUZ2DFUAeP7ET0ECTxvjML0RMFWAcTTwPW
         HSe1XTmYEsjfYzgM4+wf8G9IONRbLfY3X9mpFHpVI9cRE6gG63srsgnKCBTC2FCex6Oq
         amUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53045zvcZG5SsyQp6T7uDbusAOmxx1huKccYId3YkdlQEGRTkWgh
	cCyn3p/IsID8T5l+r9IZQWE=
X-Google-Smtp-Source: ABdhPJycnAV5bjZx0eHsu8Y5yVfOtJK83LKl/KL38avhURx0r9GPg9KR3h+4LQsANZV/q9avayz3Vw==
X-Received: by 2002:a05:6602:1210:: with SMTP id y16mr5723351iot.159.1629267256934;
        Tue, 17 Aug 2021 23:14:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:b08e:: with SMTP id v14ls180085jah.5.gmail; Tue, 17 Aug
 2021 23:14:16 -0700 (PDT)
X-Received: by 2002:a05:6638:11cd:: with SMTP id g13mr6426305jas.66.1629267256644;
        Tue, 17 Aug 2021 23:14:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629267256; cv=none;
        d=google.com; s=arc-20160816;
        b=IhaSLYBwXrBiJXUAukMnJqT+dBeBDymBYYqFkn87WF4nUg15sbkqv2PyWGdNhH8slq
         kJD4m6jR8Od/Pwv/WnpiQnNyZ9sovQXjv7aAQvdws08ro3JLGHTp602v3qxWy+J1wXJI
         X0eD7iKC45uoRmeeroO5/9KC/jhfo315Dv2iRLlvqGCEalnVHR6kDVToLsnr5L5fHR46
         J1WCtXtTPGSnu2dLPfSmgGbdPr5okE4+nCHQcXacp026JBbOcmGMdA+iCE+e2wg0Yroz
         vaTT/gdqPH8c2AYkNztB539P1QYsbfr3GQ0rglBg+8aISzvyP9AJavODXzpoNBhIhdKu
         1agQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=m1lc/nY2hnA6HnQKSHDtLAeIlS0dmnOBqNYLAvTUlGA=;
        b=mhjU876MUhirs440QlkaIGD4n9hprt4rKProBk/eygoN6y+99xj0eEAf1pQ1e6eGzJ
         NAENgRILWSCsXjNSVfcObR7QuGqmtFkZE0nHBEFAZTq98Cwj0Z3rPzD59p0nJL5leKAq
         k+F3n+EvCkfMyMBFDH9nkUxdqd02owUtg2tz9p1oyHmyahtXUMYTJ1lx8HPS8kgFoy7G
         1EiJptUS25q1SHS7T2k+kA0ulGoPngJwhHDYwhEXew5AK+RtzjCSy6wX8uF6xx1xr0Ul
         wz1+PjSqIxDn1k4uiSGfihnWaUTrKRKPrzSzeQK+AKXhre+qJjNTjtIST0FzeJC9vKd+
         cnrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=FS+HfMzV;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com. [2607:f8b0:4864:20::1030])
        by gmr-mx.google.com with ESMTPS id j13si217897iow.1.2021.08.17.23.14.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:14:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030 as permitted sender) client-ip=2607:f8b0:4864:20::1030;
Received: by mail-pj1-x1030.google.com with SMTP id fa24-20020a17090af0d8b0290178bfa69d97so1707391pjb.0
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:14:16 -0700 (PDT)
X-Received: by 2002:a17:90a:7848:: with SMTP id y8mr7473374pjl.223.1629267256351;
        Tue, 17 Aug 2021 23:14:16 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id c2sm4955669pfi.80.2021.08.17.23.14.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:14:15 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Ariel Elior <aelior@marvell.com>,
	GR-everest-linux-l2@marvell.com,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	netdev@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 43/63] net: qede: Use memset_startat() for counters
Date: Tue, 17 Aug 2021 23:05:13 -0700
Message-Id: <20210818060533.3569517-44-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1815; h=from:subject; bh=jbnLApEqieW/++fy2QnZQqeijBkPN++4uUcql8IdpbU=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMnXjTo191/u7GxZ37Wuvyxz1yYXjk6kYYtU6NG Uk/+1reJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjJwAKCRCJcvTf3G3AJkUKEA CP9QtdF99HOjstydZyty+TXWHCHvk+L8yaRJLfQw9Ij2yJtDUvVtXCUQSdzfwtxENfHB4LlV+pLMa0 qtp570ToxI9xdKB+Abev9OkcAH5UA98HTqhTsHmWJGnTyekyI18DDinSJIB0eLexCslyevedljP+I0 QwGGo7hbN2h4cNBdVfqf7XV3IlJQUfMOqisWo+S9yQprBKthAsTiNykj7Z4XkUt6ZjwQxHdovfcNxr y8X7Xi2L5LS5RUO5L2qMg49ufYnSh+87p3iZSePm58cBLa6PcS3TS+fgKFWq6rKeq7vfzHvCpl9c7m 0Pi2EHJcBRd8x9Bq+0tTmOFbFJj7lE8rPmNRx5iXfmxnplgxUINQjPc04CKf01oNBQ5V2tlOBzEhYh lZkFnyIwxJit2hdyIBpT+Q/x61E/7iEhBXoo2xHetZ1taACUz+5xMZQcqpmrQMWxuQgbwSwepHUAvL ZuGf6b7xvI0ywqYOA0nuNIJ8EVw6IByYxIAIEjfx0glGfIIeP/tLoIsgTV930k309/s9y6TBWRCz8o h5lLHubwZ57QjtbHRdw0A7frEqm19KSAvXwam0MAB43vm0TSt7vbCCiR0uj/9PR2prngJ9eQUl6K5U BuIjpDHq3lGaWV82neHsDnTIdWx4qjzZBWqMMF/rnI56q46Pfk7bv8/pmkfw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=FS+HfMzV;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030
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

Use memset_startat() so memset() doesn't get confused about writing
beyond the destination member that is intended to be the starting point
of zeroing through the end of the struct.

The old code was doing the wrong thing: it starts from the second member
and writes beyond int_info, clobbering qede_lock:

struct qede_dev {
	...
        struct qed_int_info             int_info;

        /* Smaller private variant of the RTNL lock */
        struct mutex                    qede_lock;
	...

struct qed_int_info {
        struct msix_entry       *msix;
        u8                      msix_cnt;

        /* This should be updated by the protocol driver */
        u8                      used_cnt;
};

Cc: Ariel Elior <aelior@marvell.com>
Cc: GR-everest-linux-l2@marvell.com
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: netdev@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/net/ethernet/qlogic/qede/qede_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/qlogic/qede/qede_main.c b/drivers/net/ethernet/qlogic/qede/qede_main.c
index d400e9b235bf..0ed9a0c8452c 100644
--- a/drivers/net/ethernet/qlogic/qede/qede_main.c
+++ b/drivers/net/ethernet/qlogic/qede/qede_main.c
@@ -2419,7 +2419,7 @@ static int qede_load(struct qede_dev *edev, enum qede_load_mode mode,
 	goto out;
 err4:
 	qede_sync_free_irqs(edev);
-	memset(&edev->int_info.msix_cnt, 0, sizeof(struct qed_int_info));
+	memset_startat(&edev->int_info, 0, msix_cnt);
 err3:
 	qede_napi_disable_remove(edev);
 err2:
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-44-keescook%40chromium.org.
