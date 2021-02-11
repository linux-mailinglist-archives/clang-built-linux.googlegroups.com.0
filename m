Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBUERS2AQMGQEWJUHYIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 2514C319345
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 20:43:14 +0100 (CET)
Received: by mail-oi1-x239.google.com with SMTP id a203sf3514660oib.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 11:43:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613072593; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZVTfjQ6tSWxdrFa+O4iOnBboNZMeg3188bpKVEJbnYIpavKSTpG5g6lnek8tQb7Hgx
         rddKk60d7CKM47BnuEfDmtJmFOFRIhWVdaQMGzby53lnAhQVDsnyQxWdCWaJHJqDd9Qv
         MiPjhkV8YmxRA/g8U/Kf0vWxNiJSvpD9HSORWFm3dLnZ6hytHqn7U+lpGhkkmuQtns64
         fO4nThTe5tzL4vXOTWmIdHDvPkQ+z6TpfK2hUGVzOQmFiKFSoGsjruSNcHLMYQ+ZKSSj
         gzk0DP1+U3xQrjI/EKNuBpmdoYbvYU3y6I3EpHaxXdYId6pzfwbo+EgrvwYCDeRxR+iA
         1fCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=phjAvNLh++WkZqESwYGD4aNClRJSd8l15RAK+whzSaw=;
        b=v+clBDUseWo+pGMtQayzuoC0IHz5Y2cDLqaUojP6J1OfCzkPrW8SWSIxflXpSf0ZW5
         Ng6Uflhoidrk36w8Gm+s4QIxH8ageKtRk3CrPMVHf/JJ3BwJBiiH48Jam8wENRHDMJi3
         Mp25xSww0Qn2m5YhK0KctZ13NAAgmK79RY5+Vo85rkH48LFZQl78fPeem6WTXQLvAWMR
         IChi8ShU1LHyWepmUOY7FE5KEk9qSM5IRB4b6KplSNWh2uVhC7AF0wK06InyV/pM7gjY
         JHJmrRU+agrJa49U7MLs7o0urYNO7htLq5TvWgsnYoMbXysNe9XNvSI6rvOXa31/X5g5
         GQ5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=u2mlhBNo;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=phjAvNLh++WkZqESwYGD4aNClRJSd8l15RAK+whzSaw=;
        b=ADB3g33ywWmghnuXlA9uTEPvcgetPMrtrNzoufzj5LEt0bbZofkg7exbcoEz5YDWYm
         8ImGHuVCQZvL5wumU6UxwrbpMg2i7U9xe3JmGj/ZRKXJ0Dj/0Mn4PHsH3Rc1XJIe0Vog
         ORIpUdRGHsLF5b0Ib/cY3JUKpALXJ9ykIOLTJA2zdLTf8iF64uamg+8IOGiK3EMODqqz
         HJ2hA/pyY8egPLDEkzkSdFMSgbk+sGitirqTYhnvBGniKe/z5KhvGycJhyeqlOWwp1Db
         fx0u/qoywKvBOU0qixedvPAUbfBV8nKPJ+SRzeU6jQzkVWVjoVm1u/LgEbTPDjYx18cT
         W2Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=phjAvNLh++WkZqESwYGD4aNClRJSd8l15RAK+whzSaw=;
        b=ABM2m7UMWASk5QywFDVGP1X8f+XO1MM1c3liP+d/cZvk9LiuyM7TA9oEsnpeb7Cb3j
         h1k6agIGLI0bGElcwMQqj7t0JpGsIP3KuSDlPR8KHmNdvsqQQ9v6/BmPjLDGxqAcSTrs
         QUX2cO3esEwiwQ/rL13CJt0bFAIamWSGLJzPbbk0oVyfhvtg1PixcV1i3pew7GZ4tNon
         JikkQ++kWdsOaNT0BkYHdVuVqLTBP6quPlDENLDQeeJQTAPoklXp4IZo08cKaCIRW4cv
         S9ndVKMxTthFZGd4W877MjhkCUZS/gdIDnyLJnDvwjV428glK1tLxAMKr2hUIrp1cytH
         c9Ng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530a3DqQ7jvAef/DWBefsMras50ePVppn8rUlSZ7aBIoRc02Nc94
	3zk+Z1ulZsTZ2LMftmvHx3g=
X-Google-Smtp-Source: ABdhPJzm+6lgm+FACQGKXP9DlJxsGpZpyX0hljlsQo2UyNU1WyTF/LAy0qUgi5ZEHepfL8zCcU1Rmw==
X-Received: by 2002:a9d:6308:: with SMTP id q8mr1868711otk.160.1613072592965;
        Thu, 11 Feb 2021 11:43:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:7249:: with SMTP id p70ls1699100oic.5.gmail; Thu, 11 Feb
 2021 11:43:12 -0800 (PST)
X-Received: by 2002:aca:52d2:: with SMTP id g201mr3942100oib.156.1613072592566;
        Thu, 11 Feb 2021 11:43:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613072592; cv=none;
        d=google.com; s=arc-20160816;
        b=gvaywrPKXiwFn5Ayl6H8druGef5ZeMhZKn6EwtTQLBHhqtd/sunrNkEnnZcg3xeYze
         uhj+RmEwIQIxytKGCDfQz1204RSQoFaxHL9h2K8f7Pp+7gT9plDCnOpck3qpRF7cSe7j
         cjxKGVOHjJBgWqkxkmPwPT8TtqeQfpZTQtKmN6mcbDCX6zsp7oDnu6hKBXn5FjSjD5lZ
         F5SuhD1gXKfhHBZytagmmPZiv90XinzKcQbaeUSxszkuck6/Z1hQy1sQHBwX+AWSwZJr
         24DQ07gj/OgIe00DahqTRGQhrCTfc0uiE4xK9t40qPl8TILZeSEuXQfsyYuNEhL9x7RV
         4+nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=ObeauiuMZFsGWB10n9NdB7xumZVAtgtfc6xE1vZPXtE=;
        b=Qfw03bvMFAUEV6emaNHwXz5Kmqfcc589xlQrKrwqxrTasmc8racWP5OFOfkW2qHBpO
         LV45SlX6XLPEVJkQHeVy4uahTEIox9chrMQoogiVW03szYs4UR993WW7TUSu+Hq/01Hi
         ofb8UjHK5MhnQjP740CfQkRN6NFREL1ihRQpG0yfNApgaNb/v2+wq9AdIWXtu/8Agjxm
         1VntE7y0mdCVbx+AU8Ty5e5zNzhIHgQwmrjRoTTKhhe7/V0CZT0UxL5y5CGIKMGMlQSo
         EB6QjNONZOcC4qV+KJhWTYWBjFCpMVioEhBA77mFeVtvmmHZof2bqKkTOv4jSrrUO93Z
         dEJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=u2mlhBNo;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j1si550943oob.0.2021.02.11.11.43.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2021 11:43:12 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5BBFF64E42;
	Thu, 11 Feb 2021 19:43:11 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Gabriel Somlo <somlo@cmu.edu>,
	"Michael S. Tsirkin" <mst@redhat.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Kees Cook <keescook@chromium.org>,
	qemu-devel@nongnu.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] qemu_fw_cfg: Make fw_cfg_rev_attr a proper kobj_attribute
Date: Thu, 11 Feb 2021 12:42:58 -0700
Message-Id: <20210211194258.4137998-1-nathan@kernel.org>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=u2mlhBNo;       spf=pass
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

fw_cfg_showrev() is called by an indirect call in kobj_attr_show(),
which violates clang's CFI checking because fw_cfg_showrev()'s second
parameter is 'struct attribute', whereas the ->show() member of 'struct
kobj_structure' expects the second parameter to be of type 'struct
kobj_attribute'.

$ cat /sys/firmware/qemu_fw_cfg/rev
3

$ dmesg | grep "CFI failure"
[   26.016832] CFI failure (target: fw_cfg_showrev+0x0/0x8):

Fix this by converting fw_cfg_rev_attr to 'struct kobj_attribute' where
this would have been caught automatically by the incompatible pointer
types compiler warning. Update fw_cfg_showrev() accordingly.

Fixes: 75f3e8e47f38 ("firmware: introduce sysfs driver for QEMU's fw_cfg device")
Link: https://github.com/ClangBuiltLinux/linux/issues/1299
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/firmware/qemu_fw_cfg.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/firmware/qemu_fw_cfg.c b/drivers/firmware/qemu_fw_cfg.c
index 0078260fbabe..172c751a4f6c 100644
--- a/drivers/firmware/qemu_fw_cfg.c
+++ b/drivers/firmware/qemu_fw_cfg.c
@@ -299,15 +299,13 @@ static int fw_cfg_do_platform_probe(struct platform_device *pdev)
 	return 0;
 }
 
-static ssize_t fw_cfg_showrev(struct kobject *k, struct attribute *a, char *buf)
+static ssize_t fw_cfg_showrev(struct kobject *k, struct kobj_attribute *a,
+			      char *buf)
 {
 	return sprintf(buf, "%u\n", fw_cfg_rev);
 }
 
-static const struct {
-	struct attribute attr;
-	ssize_t (*show)(struct kobject *k, struct attribute *a, char *buf);
-} fw_cfg_rev_attr = {
+static const struct kobj_attribute fw_cfg_rev_attr = {
 	.attr = { .name = "rev", .mode = S_IRUSR },
 	.show = fw_cfg_showrev,
 };

base-commit: 92bf22614b21a2706f4993b278017e437f7785b3
-- 
2.30.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210211194258.4137998-1-nathan%40kernel.org.
