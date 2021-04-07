Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBX6JXCBQMGQEATKTMBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E92A3576DB
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Apr 2021 23:32:16 +0200 (CEST)
Received: by mail-ua1-x93b.google.com with SMTP id l11sf35366uao.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Apr 2021 14:32:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617831135; cv=pass;
        d=google.com; s=arc-20160816;
        b=xaFTIISf4xCm58qoAbd0N/Hmzui+7GWQXBTaNlSgB81QahAOMIYW/ieFq7m+mXXSoQ
         6g6LtBhPzKcCu7L3XzqK1H7rDykdhRhFRaJAJH/B7Jua6c3AsQRogj1fyQViJx/pHQmd
         u9vEWV8KbNEVU1bZcVWzCk5+YODo6yDaji7QHxsniUCVXyW8djSl0hhfqXMgTziKcSIr
         RPmIQ2pp3MN0qr5bUjhiWjuQ+YGAU/T1xLe34LlZz+JMF33SyakVoB/wUX9dIF70+4bS
         V07W1KkXoIo+XNpPQHlIAVPyECNWjjPQsHrT+1RxYaqw1AwehKKqiFmgTnml2FtNPHxE
         KGaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=vuCfcXCQS7Eo+L7IVxld4mhDybHAN3lCzzC0DNpfJSg=;
        b=OWCE2vFr8g2gAmgZ96IufjWBO8UVTBB89sJpb7y6M8/UaISI4fG2qEUsK8tGXXf3Pz
         4H1kwvvn1FjxksA+7prEorkmsVD2pR3p5RjveKkdADp1s+AwMwAHZpJr48L5zy9+ODeS
         WE+hzye/S58NwQsS7Qnnshy1XT01kpqMbRq8bu2Cr/MlkaY5eJ/SNOjuZJwBlvucggTs
         T8Ht0ZjFXTQ/sSt5ytIaZBXT5cLtu0muDtQ5HgIlvNUGKOtrkXEjQr4G3DIXESByo3GS
         LgCZAAQ65j2GFJz2qOQTxzGcsG2zB+ax7UDs1T2dCXmNKi03d7Ls7S82ksKGPsidleqZ
         uCew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Zljmet3q;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vuCfcXCQS7Eo+L7IVxld4mhDybHAN3lCzzC0DNpfJSg=;
        b=NIPYtwOQR9aXtQpDAwnJ1j+jqgiKON62nJTz5/ec2wP1Glv95VpgUBqqIMQZvwuQ/R
         iddGxfIos1ZRoZeUGtE4ke+N/m4DntfYZO3tNOdRshMPQtlzhRNykqWADcrfz+e7zUzS
         VrbFgfADknCWRqy706F1EL0m8bhjeawzj+YyC3JyI1zHpS5y/RyG4Ovws5lTIXkiK0tG
         qdv4TGQHlP0QfChHRITo1S7wdg3nnXJDcV0QIC4DYxFZkV4BibmYBD5B/lWlzjoJnB3P
         Ji9244GtQzdk7smXCg4wAQe2sLtYjTEWipL8ToXPlKuifJrXp04hh+RhTX2AfXgcGH0M
         qzNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vuCfcXCQS7Eo+L7IVxld4mhDybHAN3lCzzC0DNpfJSg=;
        b=Rjl84luIC2SQIodidWVF8SaBSZAGN03QZoD1Lbxhl8yac9QBATWr918AG8TVuxa/Ez
         QywVSS9DwQRfOW4JmS8h7JuxPggXidu2aGzIjcbMr15FGYVKDoV8eRwqwh0hFmeNsFvD
         GUiAuR2WUz/JBO339XdmBHfH/oZr2BT+VzyWXRrZ7CgtG2RHPrHMBZUhTZ+Qgng9e5Kw
         rp/oJLiYAhCqQO/C/MQdE+zT20a0IL8tcpK+ODYzKbcyUj65VUf8gYrFz3O2BCiHPbfU
         YQFGne65g3XMtfNVdBohKIw0tck/C3xGexRPC6vmW7ihXtU+pxNkO65r1WNOSDZBe2sE
         AfHA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531KXQ2M0n7O5aJ8+TYObeZNasLmYS67MVcr1bTgZxW3Lt7DfR7x
	Omr5CobjfK08zMB2RjaAjsU=
X-Google-Smtp-Source: ABdhPJx5ab4M5xGW1TT9h737+BmGDuz0esxBQG4p+YDoAP1lCfK7OunML6TGqIdy8RHwfA/8dxjWVQ==
X-Received: by 2002:a67:fe4f:: with SMTP id m15mr3875541vsr.24.1617831135639;
        Wed, 07 Apr 2021 14:32:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:725a:: with SMTP id d26ls301450uap.5.gmail; Wed, 07 Apr
 2021 14:32:15 -0700 (PDT)
X-Received: by 2002:ab0:2819:: with SMTP id w25mr3753328uap.76.1617831135191;
        Wed, 07 Apr 2021 14:32:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617831135; cv=none;
        d=google.com; s=arc-20160816;
        b=RCqiBPUK9cpFbKyCu3BvVH9M6knPToHz75f9Ys2m0aR3N+YqVbQ8SbOE+K7bD7hg7t
         v0DNHrg6KpIgr2NKMD2jGuvQeZjfOei6ouNNjm443/Plb19DduzZpexJ+ZORYB8T2XJ3
         sRSE06LvT0zd7F/LgfJfWpUlKfBsYXFgNTDrOkXxitp7k9/WM3hbWaYiUozI7BT3gB2T
         iTxNWpzKT+mRuQb+/ZAOFUz0cZ3e7g9tZXkJfp5nk89iFD9ENXV2icrA5uPwmhW1HtFo
         wscVRSR/I+jFKK+yBqaNdetQm8+Arn7+cY1kFgobOpTpV5sv9/ml/3IPUFg152BU6w4H
         mMgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=+Q11weiyQnA2/fpJbasclGswLhv3rva1AW5OZXcDWDc=;
        b=SnMdORKW1YeYV0QFJI8KSZLujseE11MXxWRYy0T+//xq/jF3RvClGZXQF4933ibR5u
         7AN0OPdrfUnM86UOOT/yeIW+jKOpzswrK1F2mGFhmklMUc/Bdj+EMVaYNgtN2Pb+uixb
         a9dc2wzNBAjLuw3owBPKUmU5TzOZDXCwJWEBCYRuM6bpqFmFdztJQi8mOelAs8ajXnjC
         jjQWVVIG/6ZIAThEkIxtMlK5G5ADTWcmKgXSa/dcIHK8TUEdvCc8S19lp7TgC0Owg7PM
         /3i4D7Iwm4ZJ09VPFOzfWr3xYp32eECCW2hXMxhRMDzRpbSPw63GmRFbuk0WJ86HGXvZ
         i+rA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Zljmet3q;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u21si1193086vkn.2.2021.04.07.14.32.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Apr 2021 14:32:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7CAE0611C9;
	Wed,  7 Apr 2021 21:32:12 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>,
	Len Brown <lenb@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Sami Tolvanen <samitolvanen@google.com>
Cc: linux-acpi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] ACPI / CPPC: Replace cppc_attr with kobj_attribute
Date: Wed,  7 Apr 2021 14:30:48 -0700
Message-Id: <20210407213048.940498-1-nathan@kernel.org>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Zljmet3q;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

All of the CPPC sysfs show functions are called via indirect call in
kobj_attr_show(), where they should be of type

ssize_t (*show)(struct kobject *kobj, struct kobj_attribute *attr, char *buf);

because that is the type of the ->show() member in
'struct kobj_attribute' but they are actually of type

ssize_t (*show)(struct kobject *kobj, struct attribute *attr, char *buf);

because of the ->show() member in 'struct cppc_attr', resulting in a
Control Flow Integrity violation [1].

$ cat /sys/devices/system/cpu/cpu0/acpi_cppc/highest_perf
3400

$ dmesg | grep "CFI failure"
[  175.970559] CFI failure (target: show_highest_perf+0x0/0x8):

As far as I can tell, the only different between 'struct cppc_attr' and
'struct kobj_attribute' aside from the type of the attr parameter is the
type of the count parameter in the ->store() member (ssize_t vs.
size_t), which does not actually matter because all of these nodes are
read-only.

Eliminate 'struct cppc_attr' in favor of 'struct kobj_attribute' to fix
the violation.

[1]: https://lore.kernel.org/r/20210401233216.2540591-1-samitolvanen@google.com/

Fixes: 158c998ea44b ("ACPI / CPPC: add sysfs support to compute delivered performance")
Link: https://github.com/ClangBuiltLinux/linux/issues/1343
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/acpi/cppc_acpi.c | 14 +++-----------
 1 file changed, 3 insertions(+), 11 deletions(-)

diff --git a/drivers/acpi/cppc_acpi.c b/drivers/acpi/cppc_acpi.c
index 69057fcd2c04..a5e6fd0bafa1 100644
--- a/drivers/acpi/cppc_acpi.c
+++ b/drivers/acpi/cppc_acpi.c
@@ -119,23 +119,15 @@ static DEFINE_PER_CPU(struct cpc_desc *, cpc_desc_ptr);
  */
 #define NUM_RETRIES 500ULL
 
-struct cppc_attr {
-	struct attribute attr;
-	ssize_t (*show)(struct kobject *kobj,
-			struct attribute *attr, char *buf);
-	ssize_t (*store)(struct kobject *kobj,
-			struct attribute *attr, const char *c, ssize_t count);
-};
-
 #define define_one_cppc_ro(_name)		\
-static struct cppc_attr _name =			\
+static struct kobj_attribute _name =		\
 __ATTR(_name, 0444, show_##_name, NULL)
 
 #define to_cpc_desc(a) container_of(a, struct cpc_desc, kobj)
 
 #define show_cppc_data(access_fn, struct_name, member_name)		\
 	static ssize_t show_##member_name(struct kobject *kobj,		\
-					struct attribute *attr,	char *buf) \
+				struct kobj_attribute *attr, char *buf)	\
 	{								\
 		struct cpc_desc *cpc_ptr = to_cpc_desc(kobj);		\
 		struct struct_name st_name = {0};			\
@@ -161,7 +153,7 @@ show_cppc_data(cppc_get_perf_ctrs, cppc_perf_fb_ctrs, reference_perf);
 show_cppc_data(cppc_get_perf_ctrs, cppc_perf_fb_ctrs, wraparound_time);
 
 static ssize_t show_feedback_ctrs(struct kobject *kobj,
-		struct attribute *attr, char *buf)
+		struct kobj_attribute *attr, char *buf)
 {
 	struct cpc_desc *cpc_ptr = to_cpc_desc(kobj);
 	struct cppc_perf_fb_ctrs fb_ctrs = {0};

base-commit: 454859c552da78b0f587205d308401922b56863e
-- 
2.31.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210407213048.940498-1-nathan%40kernel.org.
