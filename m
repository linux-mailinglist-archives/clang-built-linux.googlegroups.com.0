Return-Path: <clang-built-linux+bncBD66FMGZA4INHMP4Q4DBUBBEAVCNC@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E163D6808
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Jul 2021 22:19:32 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id d9-20020a056e021c49b02902095727d18dsf5552453ilg.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Jul 2021 13:19:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627330771; cv=pass;
        d=google.com; s=arc-20160816;
        b=gpXfpNh9jq5Tsalke2BYHshvnZ9E8W4dpDo2SCwxuHhlYue7jEz00yQlPRcjILK0xe
         TsPK8OXitreke4k4CKmIYtik4gxxOz4BmdMlM9ICkVus2M8yXqFtXQADbllaZVVsh6um
         gdxLxkPkbLdI1fAf8jTUlR5bW/bf7RamD5fO4NSNSRdad26afV21BR/tFe5cFZrTtXFz
         gSPOZ9nMpvGaxD/d7AAtLwWta0dTB4jlCMhrdqm7jayDlXPDSKLYRMKqrL7OVbpqzM7B
         lcoRfSNdoqXhOTPIuoHI0heDk5h8q+C5lmD3IOY0y+qRMCGqM4nMB31FCJU1o1OJJZGu
         xl0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=5wv0WIu0TChNtvUfirezW6+PsbuySfPorttYaFSTj0c=;
        b=b0ZLN+Ive4dN0fel4L38l7lIw+eRH2SXNBo2rzuk1tdh7jsnHnnXDBygmMRg+k6uCb
         7h41o87FzvevXtCr7HQyGwK5XxJqxarD0AX/9vQ5+5tFUQJ1Bzfd7smKZuIcqL5eCGUO
         fCc1YxkgY07Ndmfo7m3IBvE8U7aAjCFugpLUd3LQPyF+QPmfVx7PozqgKMQA8Ai4XbSW
         wsGFjNbdba954KW/Sq9ZCT9Mhr77f1FkyO3YFXFUhuFqAOUGIXEo9OUKLH6ie18xcRvZ
         m2tIy/MVqwZiiFvl4SnbvFCjqNvowUBlWjIfT4kZPMTyumvtfd9BgcPw8Bf51O0IZXJq
         aCjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hz0ZRwZX;
       spf=pass (google.com: domain of 30hj_yaukeq8136q3v33v0t.r31r0p2v-q9x08-0x29cv33v0tv63947.r31@flex--morbo.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=30hj_YAUKEQ8136q3v33v0t.r31r0p2v-q9x08-0x29Cv33v0tv63947.r31@flex--morbo.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5wv0WIu0TChNtvUfirezW6+PsbuySfPorttYaFSTj0c=;
        b=k2EKCJMvcCrXIrds+y+r2DzztXAiQIoTkdMpKNv/FWreUuslg8dwFU6Vq1WHvbaDW3
         gwiszdBXDkWfZ/hrNJ6AV/bOk+7t57zGXWWufrw+pJHJAtETmiILTXhje8Dj6GxrZ+l/
         eRB7ij+zYoGZMPcB/xEcf4aJGxkXuJcXXWtu6L8nMRMj0ZSnoN1KjKbXHBrSQIWU3fbW
         KLQGQaf7OZv74bU9aepluDXW1kr3tc4t3kfbhTb6nQFoafxQ85Mc1JadxBSqahpAyEzw
         XCbU35N3TpYp30hrKmjr9kvG0M7+3ssbDCStdoJqc/u3qgeNvkKzeiS0Pki97Lr27fsT
         A9xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5wv0WIu0TChNtvUfirezW6+PsbuySfPorttYaFSTj0c=;
        b=mKUTAj7jgwa0zbRINWftNMVezGeiy7fvIY1lfzkrVv1h48yEjs2eUOJmyY9G1AboMP
         8jbMjbx8a9vN2TuCfcaDwkToQQetxdcxFhfEvoFCkfbJdKenZ5iujlTwuamWpXjxOWjE
         mDOXe3aP26V5pLMAK7hoC16DZldiyRYeEaFsL7fvqMgwwgdjG0tr/B6cvdKBhGT1CRWk
         ODIqXobUkC1O0obBQEQrRTRlj8/UALpAlXbHZAhqkXSgLYscPHoIx57J0y3lE8l9D2Hz
         wJFKv4fmSToqFP5QCWv0VvmHHQawWQUrFwh50mqV6GjAMeIe18iKs+DtJhKjyX4rG5K4
         vYfA==
X-Gm-Message-State: AOAM531Z/E2l5wVYGKHpbch2RVLDATREPPy5xClqeROZwlVtEMgqWBy9
	kk+qCS4a1EzSe6y7SYxdyA0=
X-Google-Smtp-Source: ABdhPJzdHfIPfUc0OkJBLgoKV2iR1ESooguNSO3HCJ4AcHrfdgVYdXWXYtoRnKts2uls2v9ln3VFSg==
X-Received: by 2002:a92:d083:: with SMTP id h3mr14633624ilh.157.1627330771272;
        Mon, 26 Jul 2021 13:19:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:6017:: with SMTP id r23ls3893838iog.11.gmail; Mon, 26
 Jul 2021 13:19:31 -0700 (PDT)
X-Received: by 2002:a5d:8186:: with SMTP id u6mr16077095ion.45.1627330770963;
        Mon, 26 Jul 2021 13:19:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627330770; cv=none;
        d=google.com; s=arc-20160816;
        b=1CJM69WvE9ph+Ot+ZdTpvWPNr5XpERu34NXfqxIbfIcRuSM0yWJbwm/ySFskk7EphJ
         SK75eGmPuGaS0tnQJTbX5PoC0NN8Lp/pYfIzsmnChit7fTBKz9bccsZNuW69ekb902NO
         inxYxGKzJwdrrOLT3oJZpnlhQuggfPdmBe4cc5lKwt8D69icPzYII8HNeDPFLBpesWjF
         MbFSmRA83qpclbS1leQJm64fHrmvyJolyvnCjlugpozGr+5CPuamaWD4o80BrYaUUPga
         IK9UoJ+A29KMgv0Ske1V8z8SibLJqBYhCvCcQt21t70wpZ4vEe6eIAhJgU46wh5NBJOl
         VoDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Dtq28Xg8/uLolUu+qWIKeO61eazTXjlrFQKAF/MncPI=;
        b=FovZ1CrRmvbL468NUxIVSPkZyaDWhDKNBv80WHiItBWWgDPZgm48/yIrMO12L0GYAM
         mvvx4a/jQmkDB6W582EFUSj4zhTklCUnNUR8Cs7w4SPzIhz/KIGijOVPBJEdV7NksFe9
         qRasALEEUNIp9+6nvy/pk9blTymhucSrhEmgsV44rndi9pQ0hodYTVT1k869RelBmkfT
         o5pp4AfPHBUy6pyEoD0Gl6srVcMnMEX+gITZzfyJ2OtQtNuh/vscpydPQthNca8g+DDc
         KEyRBsjhXgygTjdSdwYAzFSpCwBTjr7tHssYARGX2b1VLYaDQgC2fjCGpPwAkuNq1vtk
         PU7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hz0ZRwZX;
       spf=pass (google.com: domain of 30hj_yaukeq8136q3v33v0t.r31r0p2v-q9x08-0x29cv33v0tv63947.r31@flex--morbo.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=30hj_YAUKEQ8136q3v33v0t.r31r0p2v-q9x08-0x29Cv33v0tv63947.r31@flex--morbo.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id o6si52569ilu.0.2021.07.26.13.19.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jul 2021 13:19:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of 30hj_yaukeq8136q3v33v0t.r31r0p2v-q9x08-0x29cv33v0tv63947.r31@flex--morbo.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id 10-20020a0562140d0ab02902ea7953f97fso9043807qvh.22
        for <clang-built-linux@googlegroups.com>; Mon, 26 Jul 2021 13:19:30 -0700 (PDT)
X-Received: from fawn.svl.corp.google.com ([2620:15c:2cd:202:ccf7:db54:b9d7:814f])
 (user=morbo job=sendgmr) by 2002:a05:6214:1747:: with SMTP id
 dc7mr15897755qvb.27.1627330770376; Mon, 26 Jul 2021 13:19:30 -0700 (PDT)
Date: Mon, 26 Jul 2021 13:19:22 -0700
In-Reply-To: <20210726201924.3202278-1-morbo@google.com>
Message-Id: <20210726201924.3202278-2-morbo@google.com>
Mime-Version: 1.0
References: <20210714091747.2814370-1-morbo@google.com> <20210726201924.3202278-1-morbo@google.com>
X-Mailer: git-send-email 2.32.0.432.gabb21c7263-goog
Subject: [PATCH v2 1/3] base: mark 'no_warn' as unused
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
	linux-scsi@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Ariel Elior <aelior@marvell.com>, Sudarsana Kalluru <skalluru@marvell.com>, 
	GR-everest-linux-l2@marvell.com, "David S . Miller" <davem@davemloft.net>, 
	Nilesh Javali <njavali@marvell.com>, GR-QLogic-Storage-Upstream@marvell.com, 
	"James E . J . Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen" <martin.petersen@oracle.com>
Cc: Bill Wendling <morbo@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hz0ZRwZX;       spf=pass
 (google.com: domain of 30hj_yaukeq8136q3v33v0t.r31r0p2v-q9x08-0x29cv33v0tv63947.r31@flex--morbo.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=30hj_YAUKEQ8136q3v33v0t.r31r0p2v-q9x08-0x29Cv33v0tv63947.r31@flex--morbo.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

Fix the following build warning:

  drivers/base/module.c:36:6: error: variable 'no_warn' set but not used [-Werror,-Wunused-but-set-variable]
        int no_warn;

This variable is used to remove another warning, but causes a warning
itself. Mark it as 'unused' to avoid that.

Signed-off-by: Bill Wendling <morbo@google.com>
---
 drivers/base/module.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/base/module.c b/drivers/base/module.c
index 46ad4d636731..10494336d601 100644
--- a/drivers/base/module.c
+++ b/drivers/base/module.c
@@ -33,7 +33,7 @@ static void module_create_drivers_dir(struct module_kobject *mk)
 void module_add_driver(struct module *mod, struct device_driver *drv)
 {
 	char *driver_name;
-	int no_warn;
+	int __maybe_unused no_warn;
 	struct module_kobject *mk = NULL;
 
 	if (!drv)
-- 
2.32.0.432.gabb21c7263-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210726201924.3202278-2-morbo%40google.com.
