Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB3XRYHUQKGQESBKZ5LY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 174A26CF1D
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 15:49:35 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id 9sf6153695ljp.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 06:49:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563457774; cv=pass;
        d=google.com; s=arc-20160816;
        b=OsE/dfKsK7NgvjtAaT2CRfj08fG+EZRrKW4T0ENdOsS2HGkrL034OeI3n/gX4XLA9t
         GfAqNqHndFjGyBi1Kp7/0ClcDyGhCMNP37IWc5lBNwi9m3i0yijy7DBzzkfHj79CF2JB
         LWtRGbLZ1N+JrZS/73zntN0VBIk3C8DCYISn9GnqtU0KCyst8F1SU61uRDkD4+5/Jrq6
         WwS+uoQTC9zDM7TF+yF/YKgAmrrXvYjac4aNWtpTj7HMty/iPOJ9m3+6juwLg/WssU+j
         F8xjWbmmCwfoSUUi/r/0vj3r7uRGt44hnsI2MjqPWzlvsjwUxAcO44+3Bbs9KWX7/SYu
         nb5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=ASYqxeULxSGaJtrWvJjx6HFjz1H2+7MxELydNFp6opA=;
        b=AoJJsESwMg056WH41aTDUq/CeIedUQ1Lyk4b0GzRXgh6oCpCgPGKvLkbs4JgQTve/A
         bvM9l4n6Bzlr6N8luWpBWFCICNly+GTTWdmiEGsHYcQNM358VmWJ5x9jCLqXYSsGyrlB
         jKVpeoSJVyt48UNb7KN0dJu1UFRmWwyMXIuVJ8fla61x5lTB+Uzk8Ua8iprEcjYvG5nl
         P3Uaw65X1TeOnKmOK/whNouxyhsbnNfP/s8kOc9Qe6QsrTE4E9LKeFn5l76xWdpNb1WM
         LvFsiRFmHuMWovRMgorD3qJ+lqlsl2Wx7nb5uWEICyqJr4MOjDTZ7jUgN4zTWaAAqfcd
         M66g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ASYqxeULxSGaJtrWvJjx6HFjz1H2+7MxELydNFp6opA=;
        b=qJRnuEFzEO7BohmyiwpJjevmedoSOnwkQi0Hh70/IvTWP2Huomf8pdpefXvkS76rMs
         AdyWm5L4zQDi/wrglacJ1c8U4z69kkRg/rgXvkqquXCn90uVJ5cumpX1rdGxKHdXdjy0
         SbbNymqr22zvaK7rxqry8AoFouaBb+uAdlUbDVspD6GsBtCNtI+IZLP9PE85spnX95e0
         rKNEMrbzAcC47DyHwMPBVNNTSNrB/0q7l9Zr5TglvZ2M23i7PbczHvVCwYZHvy5gfumO
         HCXCBgF1dk0MUEgIRJTawl6/5jWp+uJaGMOu2g1BlGzVVNvckDmYrGvguxi0mGnhVTTZ
         xU9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ASYqxeULxSGaJtrWvJjx6HFjz1H2+7MxELydNFp6opA=;
        b=AKMj0N4upQXcPuuIPE+qsMEZC9I/FNA09UWMDK63Ze1X29X8NzQF5AOgquMQR5SZ2q
         AEAWoZrpqsGMFmQ3N0k2E6n7CvqysdyJW/8nwbH7JFjUoVV5Fw8i/Kah7DBP+RZTNa8n
         X9Hq7U3il1dniUYjNACom5jIsR4lJpUlIAJoA35LeMItwg/kcU/JfZ98d1toRKESf5zw
         LDAgAHrdNt7wcChPzBBa+xNma4nAuynRg2HUBm93UrYU1V81k3p6tKmKZhTrxCMQo8Lo
         nWezvt2drtg7wDMaJV43vKMpCCFrYGsoR9svbjMGzTEuVqYXk7MmUqyBZazAZcymhIs2
         LxUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU9Q3Amh5i6DtU6RA0q4ravoYMojURKq5TpL0sgSqQQS2BB1qUh
	LIJHE7Yy4rdWPqtmSMMvZnw=
X-Google-Smtp-Source: APXvYqxJ7V3/up1iwxzyLbb394cCUAgr/joaxkL7AI1OvxMSCRekb5/FQe58g8b630PmKzbt5QMgsw==
X-Received: by 2002:a19:5f46:: with SMTP id a6mr21887399lfj.142.1563457774666;
        Thu, 18 Jul 2019 06:49:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:640f:: with SMTP id y15ls2308655lfb.14.gmail; Thu, 18
 Jul 2019 06:49:34 -0700 (PDT)
X-Received: by 2002:ac2:4351:: with SMTP id o17mr610050lfl.100.1563457774181;
        Thu, 18 Jul 2019 06:49:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563457774; cv=none;
        d=google.com; s=arc-20160816;
        b=vEBqVXvi/82I3RgvrT+j57MdaZ/CmeYHPEhJe4vNmmuZ/388qXfyPwLiza4EgLVS0Y
         gtQR+iY8pzWXF1178ViQ48YTzKA/CxCrYWQ1BrEPHKpxmtEnJMPbAEVQq9uhhxCScHl3
         vZGew8d6rSjyc3GLerQqpln1nHuJgmlfq9EqsfDLMjJgl40C58Gm/+o1RdtptEs45yqE
         p4kyDHLODw1sN3VnLSPhrnGpbGliAs1B/l6yQIVdN9n1SIsfEjwehYsCEzW3NPHPtywV
         vb2WF/l9kbZ8NVHTKqFn25/RDsTXvNMW2qzpkbagv/NtXI6FYfJFK/Ong5StF6YNKEBS
         co2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=y5+zeMDsKvB1wmS+VVo5IPH1NVulBpnl5pU8XextABk=;
        b=0cVPP4tzrqKT0eF/dQGCHYKOH/6aPd16NZ0MTAa/vchtHJd74xwp6tMhKeBEOymT+7
         UZVtC81ChBZbP17gWUB8R33FnwrNemQAtz0Zhw5jxuhTGW7MdA2tQStTsqAfUrrkmWJD
         v7yirjwAZKjHM9fUbbHfYeoUDiANa4GxOCfqV8QKfIWBitAwZb8SWT78jHCOtwZU9TxT
         9a04HquajVn4Tvhi3yVI4Cyoj03VKWPhwF82vltk6UsjDDWf1ruz/nJk29ZDuQ0tYK5O
         Y0OXOGCW9PPxDdbg24Gkbt6lzq0RXVx7bFV1oTTLAnGnDSMzbAkcwKvUvA/kNortoKG8
         636w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.187])
        by gmr-mx.google.com with ESMTPS id b8si1146451lfp.3.2019.07.18.06.49.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 06:49:34 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.187;
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MTfgb-1i0NMn18gf-00U1Gc; Thu, 18 Jul 2019 15:49:32 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Jan Kara <jack@suse.cz>,
	Andrew Morton <akpm@linux-foundation.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	reiserfs-devel@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] reiserfs: fix code unwinding with clang
Date: Thu, 18 Jul 2019 15:49:14 +0200
Message-Id: <20190718134928.2472465-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:n//jM1UBMvz4mHz40peDwZc0bRe4ei5G+DelCfLdZD7Qggm1mNR
 5lg/1/Ua7+Flu6b43iHKvvAncGM9RX+0Iu1W0gkjKyJd1fYgvKnretljrYLFMMkQbYO946Y
 eFt8rOCaDb1e0s+DjAkwFbI+kLcWuWFEv4iTjUyQLrMy9g59dy8rFqB3VoVbVC+csXL6NiL
 A9aNZzyatGyOOzim35qsQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Dhra0qbXmnY=:zyw1yfG1la0nHo0Ct+9ozv
 oyX//ivF63x4MRRXFd10pqUK/uTuHL2XuzE+SsCgsZXKD5a3C/q2cdrF12xFba2SE4K7rEQLq
 PzZIRxDKm7TfeR7aYQI+IxWW3J6UAFsL0KQgknu2e9llHCY8qw9obDDn3QUCrI4zXMAn3ke9U
 m5V7elH8Gdyqzd/1+KM3Bxdo0Dj2+3Ha3S5ZdUA5OBr9dLN3MD/R3gfErAUVvGl89SqompmFl
 HbysB5BGdjrduFpnVlnH9dU5h9S0aJK8TlJWLZ1Kml9SGR9CGORZHQb0rwFqPPoX+tAbTfBtd
 GnSiRlpNe7Grsa3dg+PMIBYZPb32RV2mJstpOOPvSvyR34e7mIkLzLEISkqc51h+1GGybQK1v
 cnz4FORiZJZW8znDiIlXh57c6HobSu4Twd6HKhnF3/gMYs2IWhZPJoylHBTX1doITR79uOyXp
 /aD9sZmMXwZslA1A13ERrFF94/EegLV3Jw7i4G7nKjQhG+2ACuFCbA5wx22vPn+bnQfQv0p4q
 Q8fLCEHyYbzcAlOmp4oNIAA6xit5lFVFzVrsT6vKCLwP6VJ4p+7GdQ2yS900B+qDRr9qEfQ02
 wpGetCmR6xk/SjeNBrSZyc7FDTo6ImRQTmVop8m4o3U/xDmXmchMmD7Lqtaf22SPAPFTW1HI3
 4AQJwsJFbIJd/MjzWShdH2TiNYsBFjCCxpVqrQstctczHU4jCQuw/24PiFDFftCocupN+TKEE
 Xc2fAXLIHWDpLM3W4e1SfTGjBl5x1HtR9rQ8AQ==
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.187 is neither permitted nor denied by best guess
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

Building reiserfs with clang leads to objtool warnings about a part of the
unreachable code that may confuse the ORC unwinder:

fs/reiserfs/ibalance.o: warning: objtool: balance_internal()+0xe8f: stack state mismatch: cfa1=7+240 cfa2=7+248
fs/reiserfs/ibalance.o: warning: objtool: internal_move_pointers_items()+0x36f: stack state mismatch: cfa1=7+152 cfa2=7+144
fs/reiserfs/lbalance.o: warning: objtool: leaf_cut_from_buffer()+0x58b: stack state mismatch: cfa1=7+128 cfa2=7+112
fs/reiserfs/lbalance.o: warning: objtool: leaf_copy_boundary_item()+0x7a9: stack state mismatch: cfa1=7+104 cfa2=7+96
fs/reiserfs/lbalance.o: warning: objtool: leaf_copy_items_entirely()+0x3d2: stack state mismatch: cfa1=7+120 cfa2=7+128
fs/reiserfs/do_balan.o: warning: objtool: replace_key()+0x158: stack state mismatch: cfa1=7+40 cfa2=7+56
fs/reiserfs/do_balan.o: warning: objtool: balance_leaf()+0x2791: stack state mismatch: cfa1=7+176 cfa2=7+192

Reword this to use the regular BUG() call directly from the original code
location, since objtool finds the generated object code more reasonable.

This will likely get fixed in a future clang release, but in the meantime
the workaround helps us build cleanly with existing releases.

Link: https://groups.google.com/d/msgid/clang-built-linux/20190712135755.7qa4wxw3bfmwn5rp%40treble
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 fs/reiserfs/prints.c   | 5 +++--
 fs/reiserfs/reiserfs.h | 5 ++---
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/fs/reiserfs/prints.c b/fs/reiserfs/prints.c
index 9fed1c05f1f4..da996eaaebac 100644
--- a/fs/reiserfs/prints.c
+++ b/fs/reiserfs/prints.c
@@ -387,7 +387,6 @@ void __reiserfs_panic(struct super_block *sb, const char *id,
 	else
 		printk(KERN_WARNING "REISERFS panic: %s%s%s: %s\n",
 		      id ? id : "", id ? " " : "", function, error_buf);
-	BUG();
 }
 
 void __reiserfs_error(struct super_block *sb, const char *id,
@@ -397,8 +396,10 @@ void __reiserfs_error(struct super_block *sb, const char *id,
 
 	BUG_ON(sb == NULL);
 
-	if (reiserfs_error_panic(sb))
+	if (reiserfs_error_panic(sb)) {
 		__reiserfs_panic(sb, id, function, error_buf);
+		BUG();
+	}
 
 	if (id && id[0])
 		printk(KERN_CRIT "REISERFS error (device %s): %s %s: %s\n",
diff --git a/fs/reiserfs/reiserfs.h b/fs/reiserfs/reiserfs.h
index e5ca9ed79e54..f5bd17ee21f6 100644
--- a/fs/reiserfs/reiserfs.h
+++ b/fs/reiserfs/reiserfs.h
@@ -3185,10 +3185,9 @@ void unfix_nodes(struct tree_balance *);
 
 /* prints.c */
 void __reiserfs_panic(struct super_block *s, const char *id,
-		      const char *function, const char *fmt, ...)
-    __attribute__ ((noreturn));
+		      const char *function, const char *fmt, ...);
 #define reiserfs_panic(s, id, fmt, args...) \
-	__reiserfs_panic(s, id, __func__, fmt, ##args)
+	do { __reiserfs_panic(s, id, __func__, fmt, ##args); BUG(); } while (0)
 void __reiserfs_error(struct super_block *s, const char *id,
 		      const char *function, const char *fmt, ...);
 #define reiserfs_error(s, id, fmt, args...) \
-- 
2.20.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190718134928.2472465-1-arnd%40arndb.de.
