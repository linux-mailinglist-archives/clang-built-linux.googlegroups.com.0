Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBLGCZXWAKGQEJCIDHRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 719D6C370A
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Oct 2019 16:22:37 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id i18sf534391ljg.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Oct 2019 07:22:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569939757; cv=pass;
        d=google.com; s=arc-20160816;
        b=TYmhqCGW9QZNJiD9YuPT+7sA4sleK73Z+Y+LoOaZA2zCeQdBZpyz4J30ZJ9iiij1uB
         caG5Aa9zdRZKuf7DgVnVp6l6OwCQGS8sqLti9bB3eHEImvepMd+1/KukurX3szViNaj7
         /VsjmDH+QcXpy1XKnJeH5JFCkdSpWFQAWDV+GbF2397GjAUZ5TExVmo9fALmMZnWPPYz
         RipQOwEjNyBE3Yf5UyDMTgrU4BOmKmiVwxkoYmFrEStGoWDhROSwtj7XVlIhtecnzO49
         eRqQco63ymO3XPFlpvtvQB+RadUQzdZmwwzRGtEVmCI9zcnl8o4PLU6q4gp75rGO022W
         z5Ww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=M1sFzLuFlAkf6q+YqwTm+dRKmII//4HN6q0V0Wp4PaE=;
        b=C4JLxCVX8d39zckydnsAMlKnTFdVaG8t35kTJz7O7pQ8GPrwYw7mWf54+GejdRQR/c
         seuxHDEz8MHM6mVsauSjOmdbrRTkcazoLzTOuckiHlh9gD+r6oLT8xQpoeidcFUzyrRe
         NRbmMsrqU1A2QtuP2Y7JAwmxACO/xbR3k5sOAdtBXE2WjencQ3xdn9JGBT3Z6eVHA+G6
         tLrDChE1Jtf7kAaijLNRN68WHEnUP25hnEWFpr+m9qFaxr4Q1BQ3s2J/YQgMxoqojDBy
         s4gTc8sikON4hEV50+ia9MzPdynzlKVYA6aJ91pmO2q6o5tw2AUoa1YvP8iYQnW427/f
         C+Dw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M1sFzLuFlAkf6q+YqwTm+dRKmII//4HN6q0V0Wp4PaE=;
        b=rTFhQME3kMlUbLuPR/MAw5T2j333X1eL6CGe1qF3GkTYNT0dUsf5iDmqVVv4p1nTyv
         whF5SWT6liMjmHFHgJykKOZ1LfOr9xp/X/DtOuU5NZCjPX280QbQyB+1eQiATs9pdtB4
         cxe1YNXC9RsE5d6KLLVrd1G9PNt+L4XviuEnCP7bxKy9P9i68dV0M4w5uEW6LwdLC056
         uJGYO9De/1oEyX9+OXFnr/mvt/xHLdK5Okxwc52A7+l0PY2fACmjcQgr5QuLmnT5+2z9
         HBUCO0cCjdlIIjTECDIC/5OSRwRv24TCGVhNKwwMr1hTfm/UcagUdFIogKKkKj/wKFBM
         7g0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=M1sFzLuFlAkf6q+YqwTm+dRKmII//4HN6q0V0Wp4PaE=;
        b=pqVDhnQuWiiVn3kyaJnRQNamdY53JfC4C9QBSrqfuD0ee3Ztfxg9SND+Js5UEfgTq8
         y2yANNnKoIhqT2MqvmjO4lSVEyAbxY28AYEj/IgKVKY55bvl8DYYUmyMgUFXkJj9gX97
         1Kq5H8MxucqYfgi5rmsjBJaVbCCCxzb0Mbe0DOdH+9LtWSWGUtxYM1vd1ELmexWzjcjl
         zF+rA2H3eHX1y5vZ+C0Hb77wZmxsI12TRKtxb7miAlIhjNZSNP60Sxskz0HYDHPsZVLU
         ysOCXxZlo9wmrtQxtFCJu05vO/k4p+0SxjUd0IHYgXJjQJ0Y7PE+sJCn47CSBcVU3P5D
         1RCA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVbZ98yfGcQQqLqc9lzcEFL3kX5nvWbw53584vSUkcO4b8gM4Vd
	0GplWKVeBpmwZa33sstGHgU=
X-Google-Smtp-Source: APXvYqy0g4YNk1jrslTMX8uDEzP96QT3Wsh7v+pwUwXYDvsIvI+BJDlaJPRiREWw9nZXXTCIq/ZjaA==
X-Received: by 2002:a2e:9dc9:: with SMTP id x9mr16089701ljj.147.1569939756926;
        Tue, 01 Oct 2019 07:22:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9bd0:: with SMTP id w16ls2053396ljj.13.gmail; Tue, 01
 Oct 2019 07:22:36 -0700 (PDT)
X-Received: by 2002:a2e:1208:: with SMTP id t8mr2607443lje.84.1569939756383;
        Tue, 01 Oct 2019 07:22:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569939756; cv=none;
        d=google.com; s=arc-20160816;
        b=xg6bXVfNxsv/1DsPtnlr8SSq+RSmYKKbYBdPzJhO3bPQd/+o2N9WoOQdRI8fd4UkXX
         FrnJR905vaQrrkmDgWVL2k/CfWXqltqIGE3k8QEjFRd/RoM7j8oc2Lj+UYaMZSjDKuHS
         lF6yaqe4bqyC73+GYIrkcp9hdj+tiM+qABLG0gMuv0HzLwsd/TDoy7+tMbQa6Wh3BifW
         4tRh5PsqTbGSeJZRepP5ar9tWMXPA+SXXgA35zb43EyVCiRwl76k/7HjhECmDcrQdoP2
         naJ08JIf3LT26sdRmud+SGweq8Dz6sRIm7f3OB7JElVJRQnz5pLmszhbjIZmoJmdgbYV
         CjFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=csq/smfFcXTCCapAxxhi9xqqFAtwxiy+tyG2CHUm/Nk=;
        b=ub2PJj77pfbnUYQZlfjQfaZcEwD7mw9TcJFI98zIVRQoRiQEy9wwb5y9Mi4O3DG/Nx
         qJh5PwPEyxFwMd+F8wbHeNfyl0JOWI8hKEpr/rEqEi998EmypbKDmbe5MIPYvnr6/ANc
         rUAllP9OjE5CIQaBM+oBsdWmkmErIbYCIzT/UsGLULKCUUiofQcZFxF6Yakacodrsd20
         amjXtmkewQAfY66NpYmRvspAalnPBEyF3Nsnk7J3ioU7cwVfru1hZHSTKK2wWW520fka
         IR5y5xYj5K+mPKqItXrgWPtkQB80/jVYlBFJ7q/twxCv1KoFFmJtbCMB2mhoy9eO9uBS
         6SCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.74])
        by gmr-mx.google.com with ESMTPS id k24si1132770lji.3.2019.10.01.07.22.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Oct 2019 07:22:36 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.74;
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MtfeD-1i0GXA0Ilb-00v9b6; Tue, 01 Oct 2019 16:22:31 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Johannes Weiner <hannes@cmpxchg.org>,
	Michal Hocko <mhocko@kernel.org>,
	Vladimir Davydov <vdavydov.dev@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Qian Cai <cai@lca.pw>,
	Michal Hocko <mhocko@suse.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Roman Gushchin <guro@fb.com>,
	Shakeel Butt <shakeelb@google.com>,
	Chris Down <chris@chrisdown.name>,
	Tejun Heo <tj@kernel.org>,
	cgroups@vger.kernel.org,
	linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] mm/memcontrol.c: fix another unused function warning
Date: Tue,  1 Oct 2019 16:22:12 +0200
Message-Id: <20191001142227.1227176-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:figbJF5L6G0XEWx7vE37p+1HREP4pdaUF1hixuKWiSXi1WhSqjN
 1mFGZ1tTDFVzveitQ5dJm1AfeFw4+iQGprrZcQpcp3bgMfPAhxpWPB+9wFKeiUuUZZIh2io
 fKyAJSH7VFXtGs7nVJ2mRRs08ZUxBzWzQqfb+pARALNWlmIGBdxJ3hgENkjgKXJrT63booJ
 oF8KApMv5rp9nj27TuJow==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:cz+DaDPdK8A=:2nL8zO8obyUue8/B1m31Mw
 w7MDPepr2NIk/8jEqB17L8KReB0/sC8EuopUyWdwqJqlVcvp3IQxT2oKvNAJVDKUnviue6PeR
 wIcmeLA66NBBAU4oXNJhVez6AvFXLQ5pmYeEAr1ifiNfKKoNiU7quSbvLMSnWI4vHmEIn8EY8
 YWevjG+lYEUkz/gxRFFwQLNgF8cTE4qrsNGE7ZhE4GzS8Bqttluzugmj690TKdGNVNOPTVNOW
 wUOMhG58H6zDpFSVAXPrAjtUdf6LKC8aHbM2oZz0fCxNiD0UtxN15MbsAEX2/BnNGgzZDIZ5Z
 nFzqD+I/8uHKBRL6BGc540dfvuRUHxZaihiL3sC7pEDhnfPLqRAQhdagKAGVPy+dQr59WsDKI
 /U7PN60uf17KvbPNoh2oJxNUYZHDtYm9ClaXAmkLLtxS6H5Pq7+02FwhUQF8Bpcdc4unnK17I
 yjxptXPhtiFjgWbf7y6KGYFe0VgGsOTABwaetxrbxERmrNiuZmMrs68HaJhJNpJerd7TFFapt
 4S3LG3iz/3iK/Lvpxg8eSOSe3tfEu8HiqHFe+DKOLglC9DLB6JcAUtXvsDHlrF17J+sgDkQhc
 2qXBl2X+ugs/PMXMBsT1CoXL3Va/faJ77hBN4msDlp+BTP5ND57SWAqR66UxTtUeF9YcZqiu1
 9nAgc0uz6fFA4PEe23LNPB4p3mFah+U+Zi0gz8FUDrxlnIhcDkHC+nnPIHWbH5B8F6sSHYXXZ
 9mbOaXyAtbDR/icX0VfPaEESg1YMZNQ+e1zqPdMxSwDClUDfAgVg0VF2MjwtjcdZbsnh4/k6m
 jniImRYGrZzQZvT0JS/EtY/rVgs/bFaeuc73VNwLShU10MDLcsW/CUEUHfbHeQ+bbjPfsL8IQ
 ILrUXkj5IUCXuCgsn66Q==
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.74 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

Removing the mem_cgroup_id_get() stub function introduced a new warning
of the same kind when CONFIG_MMU is disabled:

mm/memcontrol.c:4929:13: error: unused function 'mem_cgroup_id_get_many' [-Werror,-Wunused-function]

Address this using a __maybe_unused annotation.

Note: alternatively, this could be moved into an #ifdef block.  Marking it
'static inline' would not work here as that would still produce the
warning on clang, which only ignores unused inline functions declared
in header files instead of .c files.

Fixes: 4d0e3230a56a ("mm/memcontrol.c: fix a -Wunused-function warning")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 mm/memcontrol.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/mm/memcontrol.c b/mm/memcontrol.c
index c313c49074ca..5f9f90e3cef8 100644
--- a/mm/memcontrol.c
+++ b/mm/memcontrol.c
@@ -4921,7 +4921,8 @@ static void mem_cgroup_id_remove(struct mem_cgroup *memcg)
 	}
 }
 
-static void mem_cgroup_id_get_many(struct mem_cgroup *memcg, unsigned int n)
+static void __maybe_unused
+mem_cgroup_id_get_many(struct mem_cgroup *memcg, unsigned int n)
 {
 	refcount_add(n, &memcg->id.ref);
 }
-- 
2.20.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191001142227.1227176-1-arnd%40arndb.de.
