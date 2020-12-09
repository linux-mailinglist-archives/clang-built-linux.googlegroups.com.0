Return-Path: <clang-built-linux+bncBDJNHL5JSEOBB2OAYX7AKGQEM7H55RQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-f63.google.com (mail-wm1-f63.google.com [209.85.128.63])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E8C2D4EDA
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 00:41:32 +0100 (CET)
Received: by mail-wm1-f63.google.com with SMTP id k126sf776293wmb.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Dec 2020 15:41:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607557225; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z0TXKgJ4ATQdLE0e5ttv5H0ko8hfjY2Rcw1MHjHl4G4K28DAQN3hFlGF2vUb7H/Q7Z
         /SG61nje1EseqeDna/kAylGJb+KHgnspjLqNu0/AvQADQsvtUYABW13UbF6epD4yxIkZ
         qHF0LHHtq/B6M59E08ZvCJS7401QAC9K2fIzsSb8NqEzzozXx0vgO7b3KDMbHlxgMwqS
         m0T6X5e7BJePc7yhwz0OxClAHX46CqMS5h4zdEo8PWiInc0O+qJfaKtLKMVVAaTkd5gy
         3TU7+ZdvWEDNJ5iGsm1uo1tDMo2sL1ebpt3yAPgUvB2wCMA9QHVdY5VEa1q5x72UMfBT
         4+rQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=8ohCpEioHJa6DeDsbn5iLW0vOH++tW+ck7ULbDnDDao=;
        b=d42C0qxsyb1tvZCW0cpK75YE/4psNAoQqWRVbjRiWqui36iUztbla8z4oCiReZGZQ6
         l7/eFIYRjBRirUfuJpoDl1F8ugRMd8HyQ4eo9qM3fWoJNBV2LI4BkeHavoE38Vm4m6z8
         Q5q0SU1dWeoIzY8qUaDaMaPl/9QhST/YnVkUJij0rJ15ILUHAOJcED8VRmB26Xc1gDku
         zIMJLo4ilMlcpf1fqxT0WNTBfmFFUkdby/e8kMWOOhCO843yvKcxCSzNgldY2lm2S1d4
         bwzAYE6YNUnmUP70H1ULg2+6V7ptk5p/yHeEGonNIKYGzdjOFDYYYIoRP60uH4F6vGB+
         DJ/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8ohCpEioHJa6DeDsbn5iLW0vOH++tW+ck7ULbDnDDao=;
        b=eLQpidMwG1AV0JsVpe1AY2T1SMibbLhHbhrSoB+Dtx4LXP/MQh/uVkDTHemM+Nb3Kx
         inoakvZfvqZA7Qvr5gNcfevu0VT2azXr4M5ly7mnncDKfP//t+R5T3+F2fj6Mb//E33A
         BsUo30M+bBoAYrZHgB6PRGVl5uY3ATyNTYk3Sz/L51UTcKC08KaWENMUQJ8sZCIr9htt
         qF0Ju9IEzw9QcmQTdaFjCMcSbkS899PmaQpmQwWgjFIY7L/vmaAApxeCDqT0Hoks+UwG
         TNztlFeVphI2zhsM+T1wMeum0S/Y5kklF121NzyYlnn7WE6t+ui+d1OyuL3AtLXBRZDY
         0Ffg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8ohCpEioHJa6DeDsbn5iLW0vOH++tW+ck7ULbDnDDao=;
        b=I2ELlIHVlNAFuwNzX4RJ6KEk+aFELMP33SWCo4kk0gBF/eIZJjQKfJuG6RIqCsMFmN
         TdC6xYHfJVnrhAHKcI4poVFwfTCLCFDFou+1uuwf4jmYJlUcJFE15XCGStB6vTebs+nN
         GJY8FAezgFRKiYBuf2LZraHz1IQ9YnGnshlnoyc7I5qFP/N2+xGzELimpu24gt1aEu/g
         BPpPqvOo24tvA/DrcRaKCGdSjoQCUsHc6yVIeNFH5L1cC5yhExDUzqvLFbZzd77FCMIq
         /hv87sl5MR1SOptDsBg5BWQwUfHSOpu7tyXOTCpOQOL59wcKucBfcsLOIgdrKjrSMZvN
         XKDg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Ek8q5U1Ju6/x1UJJRiChjh0Miug9Ve3i6H5yPu638BDVhgd3a
	bfjDReos7cnMwqh/4B8jIT0=
X-Google-Smtp-Source: ABdhPJzrmi08fikilqvL0Qz153Hoa32KQ48lEK5/VLXNqukYi1nHG78dSazhL0/Z0os5d9QY4YyZzg==
X-Received: by 2002:adf:ed12:: with SMTP id a18mr5100536wro.5.1607557225296;
        Wed, 09 Dec 2020 15:40:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5543:: with SMTP id g3ls1047615wrw.0.gmail; Wed, 09 Dec
 2020 15:40:24 -0800 (PST)
X-Received: by 2002:a5d:650c:: with SMTP id x12mr5084662wru.47.1607557224402;
        Wed, 09 Dec 2020 15:40:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607557224; cv=none;
        d=google.com; s=arc-20160816;
        b=YGGMAoY737EzP1i+/3BQfKo4FpZs51pHWTTz/YrZRBF/05FJ+W2nYkm4RnRdZtiyuK
         SECYwHhjofzlADRbADof+qRqTWOsT5RXduYLng53HP052tHtI2FBBUDMKkqnBRFCKsdH
         JNI7t8el8d5JYnT5Qfh+bsviR+OJcFaHK79zdMA+mHzaKNbtFDJBSf9qo5d03HsvWOl5
         P9OkxXkcmEgUw/D8GCcTopN1Qpq3M9sQTsNHZUSMEKnyTgn2d6NUftQOh5rG4PxbDAx/
         Lu/98dFRlo0/C4Zp9w3qHbpcrYcpq8vMLg6Nn9Fh6I70vVx1Mw0e0KALY6enSdauZ7ak
         n4dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=sadflFwgJrkDKM2gLLJWS/TY1bwudS+0pUMZF8LFPEc=;
        b=o3ERV82Q+ZsjGtw6cT1d8xgdGNGLq5HGeghfc/x3XQVPF49kFU599Pva8xj3diiGQt
         E9WyVr7PV7ae3eDWH3QRPTluotAw1+kYgUK4tCdUis4d+aVPzzPCllcZwrEUAHc96C+C
         9Y41U6ka+oxHl1Br3GTSblCOWGX1kaiYCM3ExCQ7jwXccE/1f43OGA/ixV5X7ABzpRyk
         4yPXFWCgDHnmtiHQMvQLKC2MUEVUb8cnCh7YQX0QM2MGHxm6I9E6LfKg2Vu2pwjy27xl
         umHOOF6FoKdsi+Nw3vvDiYQLvEEPocKnAU1KJGjyddJndgvs2Z2drrUrYBjfY+EPsgJ9
         oUjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
Received: from vps0.lunn.ch (vps0.lunn.ch. [185.16.172.187])
        by gmr-mx.google.com with ESMTPS id d17si109590wma.4.2020.12.09.15.40.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Dec 2020 15:40:24 -0800 (PST)
Received-SPF: pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) client-ip=185.16.172.187;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
	(envelope-from <andrew@lunn.ch>)
	id 1kn94G-00B8S3-JC; Thu, 10 Dec 2020 00:40:20 +0100
Date: Thu, 10 Dec 2020 00:40:20 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Pavana Sharma <pavana.sharma@digi.com>
Cc: ashkan.boldaji@digi.com, clang-built-linux@googlegroups.com,
	davem@davemloft.net, devicetree@vger.kernel.org,
	f.fainelli@gmail.com, gregkh@linuxfoundation.org,
	kbuild-all@lists.01.org, kuba@kernel.org,
	linux-kernel@vger.kernel.org, lkp@intel.com, marek.behun@nic.cz,
	netdev@vger.kernel.org, robh+dt@kernel.org,
	vivien.didelot@gmail.com
Subject: Re: [PATCH v11 4/4] net: dsa: mv88e6xxx: Add support for mv88e6393x
 family of Marvell
Message-ID: <20201209234020.GI2649111@lunn.ch>
References: <cover.1607488953.git.pavana.sharma@digi.com>
 <9db13ff47826f8bf9d08ec7cdc194c2187868a40.1607488953.git.pavana.sharma@digi.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <9db13ff47826f8bf9d08ec7cdc194c2187868a40.1607488953.git.pavana.sharma@digi.com>
X-Original-Sender: andrew@lunn.ch
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted
 sender) smtp.mailfrom=andrew@lunn.ch
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

> +/* Support 10, 100, 200, 1000, 2500, 5000, 10000 Mbps (e.g. 88E6393X)
> + * This function adds new speed 5000 supported by Amethyst family.
> + * Function mv88e6xxx_port_set_speed_duplex() can't be used as the register
> + * values for speeds 2500 & 5000 conflict.
> + */

Thanks, that should stop my or somebody else trying to wrong combine
them.

> +/* Offset 0x10 & 0x11: EPC */
> +
> +static int mv88e6393x_epc_wait_ready(struct mv88e6xxx_chip *chip, int port)
> +{
> +	int bit = __bf_shf(MV88E6393X_PORT_EPC_CMD_BUSY);
> +
> +	return mv88e6xxx_port_wait_bit(chip, port, MV88E6393X_PORT_EPC_CMD, bit, 0);
> +}

To follow the naming convention, this should really be called mv88e6393x_port_epc_wait_ready


> +int mv88e6393x_serdes_irq_enable(struct mv88e6xxx_chip *chip, int port,
> +	    int lane, bool enable)

It can be hard to tell in a diff, but the indentation looks wrong
here. 'int lane' should line up with 'struct'.

> +{
> +	u8 cmode = chip->ports[port].cmode;
> +	int err = 0;
> +
> +	switch (cmode) {
> +	case MV88E6XXX_PORT_STS_CMODE_SGMII:
> +	case MV88E6XXX_PORT_STS_CMODE_1000BASEX:
> +	case MV88E6XXX_PORT_STS_CMODE_2500BASEX:
> +	case MV88E6XXX_PORT_STS_CMODE_5GBASER:
> +	case MV88E6XXX_PORT_STS_CMODE_10GBASER:
> +		err = mv88e6390_serdes_irq_enable_sgmii(chip, lane, enable);
> +	}
> +
> +	return err;
> +}
> +
> +irqreturn_t mv88e6393x_serdes_irq_status(struct mv88e6xxx_chip *chip, int port,
> +				 int lane)

Maybe here as well?

> +int mv88e6393x_setup_errata(struct mv88e6xxx_chip *chip)

It should have _serdes_ in the name to follow the naming convention.

   Andrew

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201209234020.GI2649111%40lunn.ch.
