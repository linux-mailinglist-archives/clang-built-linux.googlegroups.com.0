Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB4466P5QKGQE5DCBJPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id D02182852F0
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Oct 2020 22:11:32 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id d21sf8030961iow.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Oct 2020 13:11:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602015091; cv=pass;
        d=google.com; s=arc-20160816;
        b=vDN+LdrmxyWdMhUDIejjyQRpe+/siHLSM6XyrDe7591ZbIB58meqaxFXdGKY7wfQHL
         bTMFJwWMe1/MX5mXPBHmDkromykRIG2o1zE3g5gI1AYYe8UWcoUUYfBVA3Dp/mod1i8+
         Mks6DXoIW9euLEXar2ynPztK5YdtYk9PZLA2uS9xddWtaUnUnBmxjOhc7C2J+yaFQGbG
         HQ1CgIedCru02uGChEwxl2qIP4QpRIT+K7Og1zbRVYpDB0KR1mNnR2UPc2yONk7eFzeR
         TIBK/aiJRmI0Ojr6e+maPIdLcFkk0skNgnhHvUoe37MyMg5Tq2/2gKasPs65Fv+4BRVk
         hnwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=pRnEiqKfaR2nIGYqjmimiWPOmU0DspvvA7YgD07UatI=;
        b=gAq1PsUM9PQsszdmTyqsm6x9SPB9peGrer5Ub2nLZoVDC7SQVmwFozupKhRcNRgMRJ
         3v0X/rOPsYbv13HUsuIMlcaSu4Za9QnszEOhBLXRHmI8DxgVwho5U8K1gHIxQyYJRpLb
         q2zS0ku4MrM9a+Wgk9T4B4eJGBdimohQ45PysMi79CfImL/y1UnxmPp7e6+xeLWlWAQN
         D4iFhNHUvGgli2edVZv8hS/0dPy6iV2vXwqYVzgHJzGP2wKPooffLiS3wAGTZqTbEGuS
         dRaI9OpPymDJHr72qB2UnhWnWKtxA8HFgH2TGfL/uhYGd6uPFt+9Zhw+dpaOoE9Z5NVU
         tA6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bngJdOed;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pRnEiqKfaR2nIGYqjmimiWPOmU0DspvvA7YgD07UatI=;
        b=mOLf3k6ZI5elo5Hva3cR6QoWGG02E+9NFZwt0LVdjiLY5l0jWVfoif1CED7FpW8g1A
         YupSY0Cjp74VjsZafjIKZNvOHJrDE3zxUsmeCWYPDW4tWDRVvkXnjdf6yjNfhDfVPLDp
         vmNAYzgtVp8QKa6mmQS3aTP9JnUy68jXtnIwEmpQwDkQEDaEYf9hg0PbRrlsjT//Y5wU
         DYProB9/Sb2iBlVsnjFDJdUmhVfUVQnaqZSlq8XSbL522drNXbOTUY7akX5OT2nyl7Kb
         4V20JZlQfyxC9dyhr1N+DCMu9sP9ymzdYH5WV6tPHgzBMxnxSrroODTGT3eRH0Vm9IHu
         1Nkg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pRnEiqKfaR2nIGYqjmimiWPOmU0DspvvA7YgD07UatI=;
        b=cvLj8f+X0Yt72a0uzw3kg/E+SbEuDkymsuKRGgVujztV0GF64FWrJkDzeAxUQu+qjf
         Xcubf7k3CtV778yCy24QmWsTyu+Ttja98kPnjGE6ycz3efRUjWiWrDAtkQVDcLWF6V/3
         m+SjnSnhwn4MondNI4L8zMoetakKPwEUdtV2WC1y7CMbNTgfMc3qUdYjMn9qjaJtAd0Y
         h5z57JQEQUUJ/ZFtrkuv8blblmqMmKpWcHjpkIxff0xtBRb980H9gOirSpFEll5o20LR
         nSpzE9O6miCIf4xfzCOZo2WcnSLtg3p37UWPENFUjEGAZ4ECh6ea6iXZZOvux+p3Z1Z9
         wA/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pRnEiqKfaR2nIGYqjmimiWPOmU0DspvvA7YgD07UatI=;
        b=bTONXOTAQ2XyYli9Uu+N9UxXvbOTSFRqiQE7wCFMC7VXViEZIAbtAi4NcM4+H+micM
         akhknc4ZjJ8gJGKVxZrmDTvhDyxxzl9c0+1dsSLPImem2EMBhcp76mW2uHWkS0n2Ptls
         ZlhE7GLSZYUPKJNzkELd3T628llcsdRoMhJa9VSTSdpt/IwjFBQcqm40g294+ZrBk3gr
         hqZS/x7g0XgSNU09XLlZGlTfMIPU3fiKV8jiZQLE29qQGjkCSQAm1oQATEAK8JAEEY3W
         uXd8hjdDNhD4OVgyC86OCNL4pxNQVZkQileHgOxHO2Dk9u73S+ijXYG95/4S4j+zdhgM
         G1qA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532/iN3Ce7IHpZTIx08tqIPt3o57Ugg5XVRxZ18oPMUsF24JYUZw
	ZPYLheBCd0eH5qFmaElVdtg=
X-Google-Smtp-Source: ABdhPJwshCkwKBAAkvTSI3HpCvE9GPXZGlbLVzuxHxGHglg8RPoXK5gKmJX1cseDOzCT7IxImM+LUg==
X-Received: by 2002:a92:d40b:: with SMTP id q11mr5286689ilm.26.1602015091543;
        Tue, 06 Oct 2020 13:11:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c111:: with SMTP id p17ls578762ile.3.gmail; Tue, 06 Oct
 2020 13:11:31 -0700 (PDT)
X-Received: by 2002:a92:730b:: with SMTP id o11mr4905321ilc.91.1602015091190;
        Tue, 06 Oct 2020 13:11:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602015091; cv=none;
        d=google.com; s=arc-20160816;
        b=YW+x1wr3FvbKlYA0TN6LwMLj95V5JbxwWSChjZqi6u0u1YynYQcaBVrHNCB+kME8hR
         AmpRhBucQ8CfEX7d8B97p8DN5lfqv2et571amLDoZYBN0uwRijoYD66bQuL48GKpboRv
         jvSDGejDxBw2jHG5LtLR2H459kee2R+Q2cW0V48Yn8KnvaEiroM5jdbQhZiiH1N0BUQC
         F2oCtyyz+Nk8C0orZV4VytSkQ0MlMKPUpJQhMAQb+AyjXmMMv85vgPh7DXlliwcV4Zqr
         GqgwhMmL0vWcgr3pqij0YicAac4aKQkrHtOoXPXq7f8Q7Do4x4eYqu50m+7BhCvvsaSK
         jwuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=C9Kgi1FQskOa5rSl0SoHJY6w4fOZRjsIxfeDIa/Yl5g=;
        b=YbKPodAUIxKn/eSDPN9sW9wXlmweyWiTfy2Id1loRD5akDaEa15CIJaNxAAON+XlDw
         zbeBE9IhlmbFw+DO5IAr+kiMoJNbU3etKOH4ld1KIBVx65ehKmIU+86xkShkdOP1SgA/
         mNd68qa7R9aJIyEnWWiZEFDeWVCZZ3lbvHVAyO+78vnsDR151e7h+vZTEi/MsDMlI2tI
         tZMkl3oX3i4z5Y/PnjQ/zbgyHAqNVGhWuIX8URo0EPh/X1pjNN7QK+4ynKKQb0UT2+/j
         793Nhq6CmSNuPO00FT2Je+0tmC9rWbnn09yu2T6oFXirJFtw76E3BqzfxwtC/ak5sLd8
         Vl3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bngJdOed;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id a13si324084ios.2.2020.10.06.13.11.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Oct 2020 13:11:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id bb1so1760842plb.2
        for <clang-built-linux@googlegroups.com>; Tue, 06 Oct 2020 13:11:31 -0700 (PDT)
X-Received: by 2002:a17:902:7896:b029:d3:7768:1eb with SMTP id q22-20020a1709027896b02900d3776801ebmr4632386pll.17.1602015090360;
        Tue, 06 Oct 2020 13:11:30 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:45e1:2200::1])
        by smtp.gmail.com with ESMTPSA id e27sm13504pfj.62.2020.10.06.13.11.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2020 13:11:29 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Kees Cook <keescook@chromium.org>
Cc: James Morris <jmorris@namei.org>,
	KP Singh <kpsingh@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] LSM: Fix type of id parameter in kernel_post_load_data prototype
Date: Tue,  6 Oct 2020 13:11:15 -0700
Message-Id: <20201006201115.716550-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.29.0.rc0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=bngJdOed;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Clang warns:

security/security.c:1716:59: warning: implicit conversion from
enumeration type 'enum kernel_load_data_id' to different enumeration
type 'enum kernel_read_file_id' [-Wenum-conversion]
        ret = call_int_hook(kernel_post_load_data, 0, buf, size, id,
              ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~
security/security.c:715:22: note: expanded from macro 'call_int_hook'
                        RC = P->hook.FUNC(__VA_ARGS__);         \
                             ~            ^~~~~~~~~~~
1 warning generated.

There is a mismatch between the id parameter type in
security_kernel_post_load_data and the function pointer prototype that
is created by the LSM_HOOK macro in the security_list_options union. Fix
the type in the LSM_HOOK macro as 'enum kernel_load_data_id' is what is
expected.

Fixes: b64fcae74b6d ("LSM: Introduce kernel_post_load_data() hook")
Link: https://github.com/ClangBuiltLinux/linux/issues/1172
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 include/linux/lsm_hook_defs.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/lsm_hook_defs.h b/include/linux/lsm_hook_defs.h
index d67cb3502310..32a940117e7a 100644
--- a/include/linux/lsm_hook_defs.h
+++ b/include/linux/lsm_hook_defs.h
@@ -186,7 +186,7 @@ LSM_HOOK(int, 0, kernel_create_files_as, struct cred *new, struct inode *inode)
 LSM_HOOK(int, 0, kernel_module_request, char *kmod_name)
 LSM_HOOK(int, 0, kernel_load_data, enum kernel_load_data_id id, bool contents)
 LSM_HOOK(int, 0, kernel_post_load_data, char *buf, loff_t size,
-	 enum kernel_read_file_id id, char *description)
+	 enum kernel_load_data_id id, char *description)
 LSM_HOOK(int, 0, kernel_read_file, struct file *file,
 	 enum kernel_read_file_id id, bool contents)
 LSM_HOOK(int, 0, kernel_post_read_file, struct file *file, char *buf,

base-commit: dba8648dcab90564b8a11c952c06a9e1153506fb
-- 
2.29.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201006201115.716550-1-natechancellor%40gmail.com.
