Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBNP64XXQKGQEGRQYN5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E838123C5F
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Dec 2019 02:21:59 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id 30sf194961plc.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Dec 2019 17:21:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576632117; cv=pass;
        d=google.com; s=arc-20160816;
        b=htnPTyX1XGH6syTcw70hWm4B7//rFRjiItm7nxB6XB4UP970k9t3dy4pQCSc5bohtE
         CgQa8UOIMuOQCyWq/bX/h5z5cvHyFXrwXzzk/xBB+/p4HBomYwMQ3jXfBN8AtWkwdPBU
         Srk/EoK3VSfX8caBN4/O6gRyXGF+hIFJgH/MXkjevAUPkm7QW38Y75y+ZYV6l4womvYp
         h2zo3fMXZ1IZ+7+PjgiIOKm9dk8AERehdtt/uc8qdKB9L03tmPZQz1WLJ8jhuGxBGCFZ
         i1wZmRDKtB6WbMcRKIdHvqHWxgILbRWobFuDF9R2OFTs3DNIjupUCfuhfZ+CxkMHTXd1
         mowQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=+96aBB7kH9yoXnBjClP1b4Vi6bbsqwmaTNuqk4vWSVM=;
        b=IxW4rlfET9tXi8FZ7hpm1o09mZ3DbSYHFuPWJPTfWPeWJ1zjj2dCwCBLTmVlA794q/
         cFA7Q40yJSMr3zTjQHNEZeTB09yQzSHhulZA5BcNMAsT/FM9rgkApc0pnTEwkL1uK8k6
         Y0NJ8urrrtjwS+kbCD6D3q8j6d/S5IT/G9T1w6pfVnwRH0TgxHSFZWVBAPXyTtJ2X9G8
         6rTAJ1G9dkdkBSyAc8yBSbIWOXCyd/8R5QH4jLL/Rf05DJIUzjtG1KizfIoG4oxl8dm+
         CT30EmmwPbLK3Jz46y9NnaFNfwhfiU8fcSWuqA8fUwTz23AbLc2aabBxEQxIAXqUuAa1
         ys/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ewGSI+bn;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+96aBB7kH9yoXnBjClP1b4Vi6bbsqwmaTNuqk4vWSVM=;
        b=lgzrE2MWYMgTqTgYkey5qj0MvN8NVOSsev7pMlnjaGvWZlAVQ495MiAbmkfCq9iA+K
         D/dvQahqDvHcm1B9IK8AV8DFYfc3HcaE0pQbXAgrRqeZRRPbij8koeb+Uty3yXDL7HVZ
         /OKQxd+z4tM5HYThFzySSmRpNPEaw8HMxhUebvD4L/fiE4eJhA4l47J6v3Ut+rgWXEOe
         B5VzfcQWu9S+HwCHpYf+MyStsTIyuvVrjmUnCwVetQwZmAi2uHLi9g3RQdY7wOnw3sA5
         zXwqqIjiWSKzdQ9GSXKCSybEACQPtwjZaiGojaaIvUGy6kaVynvJZhTDxTpYzhXleYdt
         KM2g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+96aBB7kH9yoXnBjClP1b4Vi6bbsqwmaTNuqk4vWSVM=;
        b=ugeJdjJpdXxtti6FWtAvceSdgKobeDNZPDYLDiDEDQJpPejGwc6c2HG/cp6skChwLy
         HtvQU9T6j4uUzyDYujTwYBe1KNahVPmAkilvAALKr1MMi9xm8hu3vvPeIN6L78QIDsYX
         MsJiFZ2Duf4Ofc3iUiWER2EqIBkNe6E35jw4G4XBkMvKJA8qsbIBlanDO9lt+HBEtglL
         zYQGLGFI0JLUpDsUcVci1dh1u8TyTR1lyDXdR+eSYRU86C4JmvDH1HeFClcM4nyB0cqg
         z7gm6itqyXgoR57AuQhVrR9VxD0Gz53+x9adwLJE7aoZPmOP1hVcWUZ7thqQ/HfigbNX
         yKvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+96aBB7kH9yoXnBjClP1b4Vi6bbsqwmaTNuqk4vWSVM=;
        b=Ayolz1WvMYOTlHeWuMj3meyWoCKZ9wqZ58WWenZ3AmPnRA3VAkqmCey1OL5DAqIj42
         BcTvHhzYQiZh8+q4TQa/2ow/IErcAh7htdtc/foM5ezKxjNyRs6nOUO5JLWSo4YxHekk
         9gemrndQ+zfMzdtm41Vk1Xg8PyvXwJl2Uzh4xpqtf+v9311duuGTW7beC5nuAW4RZGT0
         c51UFcgCjUq9nN5mz16LmcLlqXPB0B+YUcnfzua5adiZqbdEENMwpz17VJxmM8jNnKA7
         zEzjCdIfvFtzC3mursWVOEZ4Qsy0yVqpTCpy2F290P5VozkSm4qzDe7leyHbWMW2UCVn
         tKvw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWUcHokjIks6hRSjNGuhlrxBcFW1EDDORAzIv6rCdjew8qd1Nf5
	9421KLXtK8JfbojMEXxbBLc=
X-Google-Smtp-Source: APXvYqyhLCKgak+S3wwg7pt+Ijd705H2pxNonFH7CmzL5M/IHHtyqtXOnxwgHOLVTYF9+C8lQOFhpg==
X-Received: by 2002:a17:902:ff0c:: with SMTP id f12mr1208423plj.226.1576632117595;
        Tue, 17 Dec 2019 17:21:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:208:: with SMTP id 8ls66734pgc.16.gmail; Tue, 17 Dec
 2019 17:21:57 -0800 (PST)
X-Received: by 2002:aa7:8b55:: with SMTP id i21mr809827pfd.249.1576632117239;
        Tue, 17 Dec 2019 17:21:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576632117; cv=none;
        d=google.com; s=arc-20160816;
        b=o06XiDAzOCPSzfTqzApVGJidB1hbzTOdGs9cuWTnKse5iUeWXQmuQOJW3W2iavoQHT
         Pfkbc4drNs42W3tBCRNkzcS2cjyeP4inzStWVvx/4NfyYT5p1imdFLGkD/Q0I67K6VYz
         X3Afe+4R5uRr7olhyOReVD7IF7z9N2NZYXc83Mj8lgei7ll1TlWYYEhldxhEJOXmyCql
         BwEwIwmyoNFdzOslE16XG8R67DbGy2h2ZUGp2HAmW4ybFwWZGfPk7GyhNeOKreBW/mv/
         H487A9yoMNJ/V407SfaCfvHj+oG19T/3jD5yKFr9E8py+jf4tdEG/EJGKogjtQg0hPUe
         YdFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=ZcjIbQOSWhikOPzlHM6ZEWQw/5oRTb6+fvho9ILg6nc=;
        b=o5J6OUqY1jQjOK7OQa+wtaPrkGlncLwnAjGUDx25hLW1+Qh84PTh02kZZcs5/FumAl
         8MO5kZIBrtGEsqqbNurmN1i7zGDGrPOBsMGLP0YQOHIWC6zv8Dx6OixkHQAkxCFiiy0Y
         9C7pxeakwnZnUZN/tsDZ7CVSxYjqM36MccW+It0vGbk0KKYRbRVW8horyASZp/h3DjNE
         NOZ7idGoBo2Dft70pB+/dJ6/AavGk0ZN6Edk/mLPU9d97SdePjqxHEJlfXwkfcsps0Yi
         za/rlC7rfhlHBMoDNcD0w1AbAzZdnn8DPoeR4tj5Ok4PFWvj485OrvU0AOmUodNiMXQe
         Xytg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ewGSI+bn;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id g17si25470plq.0.2019.12.17.17.21.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Dec 2019 17:21:57 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id v140so270474oie.0
        for <clang-built-linux@googlegroups.com>; Tue, 17 Dec 2019 17:21:57 -0800 (PST)
X-Received: by 2002:aca:c415:: with SMTP id u21mr34515oif.49.1576632116439;
        Tue, 17 Dec 2019 17:21:56 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id p184sm240395oic.40.2019.12.17.17.21.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2019 17:21:55 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: "David S. Miller" <davem@davemloft.net>
Cc: netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] NFC: pn544: Adjust indentation in pn544_hci_check_presence
Date: Tue, 17 Dec 2019 18:21:52 -0700
Message-Id: <20191218012152.15570-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ewGSI+bn;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Clang warns

../drivers/nfc/pn544/pn544.c:696:4: warning: misleading indentation;
statement is not part of the previous 'if' [-Wmisleading-indentation]
                 return nfc_hci_send_cmd(hdev, NFC_HCI_RF_READER_A_GATE,
                 ^
../drivers/nfc/pn544/pn544.c:692:3: note: previous statement is here
                if (target->nfcid1_len != 4 && target->nfcid1_len != 7 &&
                ^
1 warning generated.

This warning occurs because there is a space after the tab on this line.
Remove it so that the indentation is consistent with the Linux kernel
coding style and clang no longer warns.

Fixes: da052850b911 ("NFC: Add pn544 presence check for different targets")
Link: https://github.com/ClangBuiltLinux/linux/issues/814
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/nfc/pn544/pn544.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nfc/pn544/pn544.c b/drivers/nfc/pn544/pn544.c
index cda996f6954e..2b83156efe3f 100644
--- a/drivers/nfc/pn544/pn544.c
+++ b/drivers/nfc/pn544/pn544.c
@@ -693,7 +693,7 @@ static int pn544_hci_check_presence(struct nfc_hci_dev *hdev,
 		    target->nfcid1_len != 10)
 			return -EOPNOTSUPP;
 
-		 return nfc_hci_send_cmd(hdev, NFC_HCI_RF_READER_A_GATE,
+		return nfc_hci_send_cmd(hdev, NFC_HCI_RF_READER_A_GATE,
 				     PN544_RF_READER_CMD_ACTIVATE_NEXT,
 				     target->nfcid1, target->nfcid1_len, NULL);
 	} else if (target->supported_protocols & (NFC_PROTO_JEWEL_MASK |
-- 
2.24.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191218012152.15570-1-natechancellor%40gmail.com.
