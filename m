Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBSMGRCEQMGQEHH676QA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 214F73F3E79
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 09:56:58 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id s6-20020a4ab5460000b0290263980f2b45sf7321252ooo.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 00:56:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629619017; cv=pass;
        d=google.com; s=arc-20160816;
        b=gHgIkygilAq20I5CruxeGQHB+AhIfykLe88XdrFUNUkBofl5tC8uA5fSSkK1Xtk8t8
         5kSUS2tDClzEbdt5861M3sPGsO1xlJ9fjggKPIgvTQqeSHkgtIG+w6vOpv9sYcmeaPpE
         KaBzupy1g4KYPao6+u0yzddeBM/DllxOgWMsVFjrbn5JLkWVj5HoQvFPg76TY0F5smcc
         BSNoOgLUzooA3PA2zlXs0olYqDTbg0S5Bx345vpna90/JlbDY8fyCheoaIgBfV3FRnP4
         5ce2fbdmWpBX1pxO0o9W/Ssa4imQVNDQv4RbtAw5H62tUuhdzzBUXBz3ipPrvRQQuKfQ
         nB/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=+mvij+wiskTRo7L2gpp9Dg9RFKJJ9yonUzvzN+TAeJY=;
        b=tiD99I83ww7jp/1UJ9qsoUrQwFCKMQrpPJgrCTVhuDcJ6LqaCUslGn+yvK3ZXgWhzP
         06SMXgbIAsoexEks+sheMIsnZLT8VrfSxEvDvx9Z30QUKiGo1RvgVHAmpXQXDrbypLGc
         IrxhUzYe61jFVxY9Dora70S8VMZzkB7foBjVH/1mWPDLiaFHusT38w4NkLyuDx3LtDeJ
         4tU/vHL/rIz7g/CjoMn48YJHPglfpkxG1H0qaWe11ypzkdyy8+gbUsVUfPXMhN4H0oyQ
         0UjbYEgz4mwXF6LDvwr+0tetBQE4jS1rYC2pl+MqhuQs4SGOJlVBe6kZPwZzN4ayS+47
         oLMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=fg7ZhYLv;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+mvij+wiskTRo7L2gpp9Dg9RFKJJ9yonUzvzN+TAeJY=;
        b=aBOFXqLD7hOdNQ3eJbNh6GCkQKnDB4tfdRZjM2OxFOO+syKYGb3aCqdU9pTGpn7IE/
         rDle3g0LxkIEgeIZX7+FRfVSKNdhjVmPca3072QOBZse1I/yjymoryY0dmtQ93CAKaTG
         xbXU25TgTYihf0GJr02PvfWsqnJEKKO5rOqOUJ8lNLfKDpn2I99NBkfMt8HufJriv/EZ
         PByRpXQty575YkBZIROnugkxI/Z9kAbmftICOkuTRm703zO8K6kDdJx9dF0HWaWXcZRD
         wpW2koFT1mwPh5BVDv3N7QTV4WuawWOaXnxn9zUuJm50ZRFIE7SkPqzjCAlJhZUzz+JM
         COOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+mvij+wiskTRo7L2gpp9Dg9RFKJJ9yonUzvzN+TAeJY=;
        b=HnUZ3pkqhw5Zh1OXSfNW2uKjw7Pxnczg2uwOmBvflYIhmUnnpvxPWpiC0w4eobnk4a
         ZK3bk4puE/Dm4LP4VxSDMP3L3lO7QVYsbf5q4LTRcLnnZXwxZ2Yj/7U44TQ+2MRtzwNX
         mDaTr6hMdd+zNoTfE773/1CyBZH0/GA9Wy3D7qPPGnWyziSejawTCsWz7FGSFHMlGnTE
         ZRB1RopPdA/HKqdyEc+E4zzq1+PdUDPtihckb8Fvir3MNjqgZIfguGbCw+JO/cxkNlbj
         mJSEH1t+SgvVe0O26kizr9Kkq3XsrqSUg82/6UE4cK0LrW6lJF7tLs1Jhd8ujNqlHCc1
         OBQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530zGA9zxcfhEBfJyHqFtxv5/mtlmCzeQwtL4Q1E2IOlpmyOFL0g
	v/oBIsghjvE+ahUkLuvr82g=
X-Google-Smtp-Source: ABdhPJy2RyNhNqTIaukmvW1KPK31OjjMHKIG+rvI1WL0KKGlT4e1vkKZxCSXSb9llXryUJMVJDG78g==
X-Received: by 2002:a9d:5e5:: with SMTP id 92mr22620351otd.193.1629619017086;
        Sun, 22 Aug 2021 00:56:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:20a7:: with SMTP id s39ls3332029oiw.11.gmail; Sun,
 22 Aug 2021 00:56:56 -0700 (PDT)
X-Received: by 2002:a05:6808:c4:: with SMTP id t4mr8218699oic.29.1629619016750;
        Sun, 22 Aug 2021 00:56:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629619016; cv=none;
        d=google.com; s=arc-20160816;
        b=CPj/e3Lml0SIJ8WXeMO5NVQJ9FDyJpMmgUkxhFc0Rg8DyowNkHxYoCN6BVzWZIlCtw
         2JGEwyoIgYOaflXKQuWxy3qvyXKPBrfgbUgE2+3HOZAy4M8OZX2Lkf8/6a4qvAYL/qe8
         m7LfH0okAgarNfBX/YKREr15l0REiDLcaucR10Bvwzw4p/OC8fI8AL856ulVhqpcb+hR
         4NaqsLKrXWt3awwhvALgXIG9WYFAAVgiwiTjcjA+LBgSaNaDlbKpRPssu77Md9tAc2Me
         oEcYG9RtYk7M1hY5iXu4R86kaFyoQytsSgcwfOFv32ppmgifcVo1grniK/KY3MzdC6cY
         Vijw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=QvdBkUpptZhXKvwrMm3zs3qjx3Jw+Diy7BkjH6c2x9o=;
        b=h4O5Mu548cvWb59MJjd/zA+FCG5Aljc08oWTCJ7D9IV1sbDeRpjFSnLvWgEklLCxsF
         BH68iNlNFEeggHrAzA0/jT/d1vMwbHVMveak+1oa3vewKvu+/lD/CMSa7OdNHborBN3m
         vcWgaw3VyWaqItRmxv+AtdnQKcvqT+pPtnVvUxDwVAlnOTpgQ0ArVbTV/1+ofutZ8FfB
         i99GbHQFRIjRrXYF72fRnYhAy30dhK0G793jZefO1yPi+VOYQUAIymxMUIpC8BwDia6e
         tdpWgovWHNkvnx3dDekFuxqrov9yEoE1ktQupeUIVdp51mKDb+tBszlxXPhIRafGwnkW
         RkVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=fg7ZhYLv;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com. [2607:f8b0:4864:20::102c])
        by gmr-mx.google.com with ESMTPS id p6si355927oto.0.2021.08.22.00.56.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Aug 2021 00:56:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) client-ip=2607:f8b0:4864:20::102c;
Received: by mail-pj1-x102c.google.com with SMTP id h1so4153107pjs.2
        for <clang-built-linux@googlegroups.com>; Sun, 22 Aug 2021 00:56:56 -0700 (PDT)
X-Received: by 2002:a17:902:d2cd:b0:130:a7b7:3c8f with SMTP id n13-20020a170902d2cd00b00130a7b73c8fmr10580004plc.46.1629619016141;
        Sun, 22 Aug 2021 00:56:56 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y62sm11996200pfg.88.2021.08.22.00.56.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Aug 2021 00:56:55 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Daniel Micay <danielmicay@gmail.com>,
	Francis Laniel <laniel_francis@privacyrequired.com>,
	Bart Van Assche <bvanassche@acm.org>,
	David Gow <davidgow@google.com>,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH for-next 22/25] string.h: Introduce memset_after() for wiping trailing members/padding
Date: Sun, 22 Aug 2021 00:51:19 -0700
Message-Id: <20210822075122.864511-23-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210822075122.864511-1-keescook@chromium.org>
References: <20210822075122.864511-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2741; h=from:subject; bh=E6gFtKPMaqY94NYGTcjgqzMn4Zg8efYnWFddeRIDocU=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhIgH50IyFEulz6vf4MWlQ/Ezu82EvPp7pmwWKKNPw FQi+vpGJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYSIB+QAKCRCJcvTf3G3AJh3rEA CrFF/z6kOuE4E1nPr3TROjLRJGQjTLaabDuXR/aIm4UQKeKkoTwGA2+A4SqjMTq/+P5Ys7g2X4LT/W Z2l1Vk9U0SrRQPJl7vZYRJ+9O4qUs3Kf8Ny2bIVgxeZT2N0blFHjxagjdD8vAzrY3b1LssVIU5HLiQ CkTZwHf1BnUGyXWqlHau1Vtb3xdCMueRk/f0+dyoPkbCq9ZiKc0XgtZ5MOlzVE66BQLezYe3VZxDUH aDeSYCo7PVgr9pV36o86mUKSUXJWTQ74tdMd1P2VvIhlNEI+vIzBXIjvq2l/IC+Ia2/oqyD/PBLJJk RoXa16m2Lr5ydwZuU+5qMNSo8Cz5OcHc0iQS5x/zK4L2Y6i84HtrS2Ja/RoBQ4SawOGvwkqQMDWUhM tML3SJfr/6qBoVbM7j7oTKiWGwFiZkpavW0iPpwrFqTjTonEi3vdUzO/ahwHLs5uU8gEPP+nPovcfo wZ9AAvOWdDZeSU8i0x0zCI2Hiu5fGcmVETpSSG/F1WqZuQHz8KRI4ndkMy5COuwjY5DADDoBVXuei2 GDhIxOMqkO2jtycMsYYhPX4LOTHskAA/ikwrRY9YVN753cwclPR1h9ULCg29KZIvJfiQ4oFMPNQ49S SyWtCljmqAu2E43Fu6xl6RJf6H3Wn1D9Ei2FNzhed+0om1vGjS5eu9TtBUHg==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=fg7ZhYLv;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c
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

A common idiom in kernel code is to wipe the contents of a structure
after a given member. This is especially useful in places where there is
trailing padding. These open-coded cases are usually difficult to read
and very sensitive to struct layout changes. Introduce a new helper,
memset_after() that takes the target struct instance, the byte to write,
and the member name after which the zeroing should start.

Additionally adds memset_startat() for wiping trailing members _starting_
at a specific member instead of after a member, which is more readable
in certain circumstances, but doesn't include any preceding padding.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/string.h | 17 +++++++++++++++++
 lib/test_memcpy.c      | 13 +++++++++++++
 2 files changed, 30 insertions(+)

diff --git a/include/linux/string.h b/include/linux/string.h
index 9473f81b9db2..d593de2635ba 100644
--- a/include/linux/string.h
+++ b/include/linux/string.h
@@ -271,6 +271,23 @@ static inline void memcpy_and_pad(void *dest, size_t dest_len,
 		memcpy(dest, src, dest_len);
 }
 
+/**
+ * memset_after - Set a value after a struct member to the end of a struct
+ *
+ * @obj: Address of target struct instance
+ * @v: Byte value to repeatedly write
+ * @member: after which struct member to start writing bytes
+ *
+ * This is good for clearing padding following the given member.
+ */
+#define memset_after(obj, v, member)					\
+({									\
+	u8 *__ptr = (u8 *)(obj);					\
+	typeof(v) __val = (v);						\
+	memset(__ptr + offsetofend(typeof(*(obj)), member), __val,	\
+	       sizeof(*(obj)) - offsetofend(typeof(*(obj)), member));	\
+})
+
 /**
  * str_has_prefix - Test if a string has a given prefix
  * @str: The string to test
diff --git a/lib/test_memcpy.c b/lib/test_memcpy.c
index ec546cec883e..3b485de8c885 100644
--- a/lib/test_memcpy.c
+++ b/lib/test_memcpy.c
@@ -215,6 +215,13 @@ static void memset_test(struct kunit *test)
 			  0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30,
 			},
 	};
+	struct some_bytes after = {
+		.data = { 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x72,
+			  0x72, 0x72, 0x72, 0x72, 0x72, 0x72, 0x72, 0x72,
+			  0x72, 0x72, 0x72, 0x72, 0x72, 0x72, 0x72, 0x72,
+			  0x72, 0x72, 0x72, 0x72, 0x72, 0x72, 0x72, 0x72,
+			},
+	};
 	struct some_bytes dest = { };
 	int count, value;
 	u8 *ptr;
@@ -245,6 +252,12 @@ static void memset_test(struct kunit *test)
 	ptr += 8;
 	memset(ptr++, value++, count++);
 	compare("argument side-effects", dest, three);
+
+	/* Verify memset_after() */
+	dest = control;
+	memset_after(&dest, 0x72, three);
+	compare("memset_after()", dest, after);
+
 #undef TEST_OP
 }
 
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210822075122.864511-23-keescook%40chromium.org.
