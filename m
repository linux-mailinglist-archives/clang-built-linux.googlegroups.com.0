Return-Path: <clang-built-linux+bncBDY3NC743AGBBTV5UH6QKGQEGKC6BOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 6014C2AAD85
	for <lists+clang-built-linux@lfdr.de>; Sun,  8 Nov 2020 22:10:41 +0100 (CET)
Received: by mail-qk1-x740.google.com with SMTP id v134sf4624934qka.19
        for <lists+clang-built-linux@lfdr.de>; Sun, 08 Nov 2020 13:10:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604869839; cv=pass;
        d=google.com; s=arc-20160816;
        b=F/HQDfqwxjkAK2M/9kc2cckcd6DsmJ2NDtMroTUOpqUD/Jkl+1wXO0fUEbZOyfuMlO
         gFaWDwc4FgTlYpyfHLaJN3nM5PhQCZvpr6SrTaSbsNwGKFhjmoXKmajqSMnKHhlA5Ogb
         QGJpdcf8kf3nZtMdt+2Z5f3htoP6wW1QE102de07sGq8QV4eLSEslry/R6bLUqx02xIJ
         B09jIYeGHPklc+/Fwoy5urng4zmPDndkQowirDg4FQ+tx7PMzYP94KYbDAhhJlErTi54
         umpc8rVjsKpXqPxzkH2plHro3g+3qza8MxCZ4aw/ZzXQaPFS5dUs3RxjQ3w8wolFqSVn
         dH1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=/0A04ZC0D7f+h08Qghd2y/EfA1L9DIH/QffOuKB8Fsw=;
        b=WQseB4eFTMtLYFlTlaElATWJpBAX+dEeCbDPCNmt2pmoznZc23rh+0rVay9idl8lSs
         UUk8Xd4jmpZZ2LbNYHTq+wu8cfPjVkdEYaTzXMbuQ/XolVFfJ5zomfCZ1iMH8piy00z9
         4kJCWUmZkYCHNzeM9MfmWL1bq/MqY/CmYRU0oKib27/umHOrt90T3IhiLcMjBJGW45Pm
         c9d3Z9PacVc43fJ6ICPYHGAmbpW5awTUb8OUzQ2w5eRcLIYAMpkcxsw0V6kXA/Q3zav6
         HUK0nklei+Pw+QOvCQD8rxlcUW7RhMIMPPrWwEFZaKA5QV74toNE46YvqwTy4AGiLMHl
         PFSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.131 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/0A04ZC0D7f+h08Qghd2y/EfA1L9DIH/QffOuKB8Fsw=;
        b=DrimFhRy8K5b5dRHwmty044xreArsYQq5NlE8XPJ1xxcoKfdXBPswdNKoNEpsptVKg
         Kc2EH4Dh4xr0ieTisbzmrE+sEm1mqdUoqmZ/TiHVl/ddDFPiB3IzM/y+6oLIzsSRPdZ6
         AmzhwIPIORwtB0IFGGHADN9A+2dKurkj9YcXx8RqwSamZiaS+ngsUPAKf0ZCcMyISLpj
         dkmoFBRVcY2TIu5Ci42E5NQyBhD3vrgqSRnJ4SI3efcntjQPzBfKS8qv4Hh4RoXheJ3V
         qrJI3ru6FPEPAcefbsnmWAT0XQYvu1WuRc5XV3WeMC4+rPevumZtZTE7MDvOXjfCDR0j
         SaPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/0A04ZC0D7f+h08Qghd2y/EfA1L9DIH/QffOuKB8Fsw=;
        b=KzmOmJKsTC25eZHbD/jibVlke94tFAOCLaCeuXPbHoSM5eZFeY6odkMyLirmyGCqm8
         Fwjy/bQ2bh4vPbE//kRcIT7Q//PA8REMNsrQxNIZP9rn1KmllopZ8Y/6GtbBbLvepgAq
         LkvARWDdhjRtkuV/1MKiShX6tdTeHbvH4f5vEMYg2ox6QUuRKbWbi2tkuWlIOVIP8ds2
         FyQh51tB1CbIZ5Er/6zlRj+DhTCfrL58u2hmzi7RzrOLnEU5qq+x/hEz0rmP0nJkAPU/
         xXtN+ilTe6y+YNxVLMVTqcNkPHOLqwtx6qZP8AcbL7ny6kFMB50VkhE3EM6hkg9z5ouA
         2icg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532OvoA0Nnm4J0yHXXvKRnySZ19JZ2YXAfVbSZklLEYH0H3z5A51
	YTnYsbxJ3twFHlBVr15FHpk=
X-Google-Smtp-Source: ABdhPJxQFuWJsZUDG9kmCdxZ2DMG9YyAovznQ/TEw7NhFqo90DQ913bmqB0wjhnUCx+1W5OSgdfDQA==
X-Received: by 2002:a37:4a93:: with SMTP id x141mr11515290qka.378.1604869838257;
        Sun, 08 Nov 2020 13:10:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:543:: with SMTP id 64ls3320083qkf.2.gmail; Sun, 08 Nov
 2020 13:10:37 -0800 (PST)
X-Received: by 2002:a05:620a:235:: with SMTP id u21mr11329789qkm.500.1604869837731;
        Sun, 08 Nov 2020 13:10:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604869837; cv=none;
        d=google.com; s=arc-20160816;
        b=HEYRpZtpiXtjC9bebwppELhs2X/1UjFvijzR3p2x7fewRBiednl2wKO0b4texy/E+J
         Al3gUHlabZHLKwcbX86jxwWuS7xSSLe60LATYWXVt96cr8iIkf4TLD6Lm0jm0nUfwhct
         vwZze9Jtq2dz6k4vuaQC4MLuDpJgHEoS1VSxQP0cL21f/P8p4BCcRkTF2gm1GyQRtWQI
         +a5arv+g6Mhg/eWawz+9yyguQAdV00W3maxsHsJWXc/ZEMes/QBPAsOiELCZvnCrxSxl
         uC7fkvIDJwE2hvUVBAT0w4R5xPJCqZn+v6Evl+hUOLGAZGhxrqKD7MFezgBzpfqNedxQ
         t6Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=4kA2DJ3HHabFlqy6PrK9hFtnJPq1QUNk6XemEsW6LEg=;
        b=GGoKtyyIGcE7jJC/ttlAbwGM5rPZkkCSPcLnqxj+2Fud/k20cLkKxKhfek9KPJFKa1
         bSP2LqxqOCPMz4Bg3ia6cUZNcmaiq/pXwWi1dcg8ir1XNcc+GDsm8BvQdEGLKy75dxA7
         +yDrUcCGpmCb54PM1pqGNnqHGjbc/TixMEZNgiKoHr1Ch+OoYHcqrvo9damZ/rGKSNri
         a/KjVldhQWQPz7Dr4HNjSTAdocaT31mnbi9FysUg51WN9Xs1Sl59PMdC63xdFT/VHlWt
         6z49Z2oGOHjQwwuZw1exaeI6Gg1oshHUZc+aSCnllQUD91AJRoFd1FnDtRm5IMLGL4wI
         j6AA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.131 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0131.hostedemail.com. [216.40.44.131])
        by gmr-mx.google.com with ESMTPS id o23si462461qtm.3.2020.11.08.13.10.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Nov 2020 13:10:37 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.131 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.131;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay03.hostedemail.com (Postfix) with ESMTP id DF649837F24F;
	Sun,  8 Nov 2020 21:10:36 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:69:327:355:379:599:960:967:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1500:1515:1516:1518:1593:1594:1605:1730:1747:1777:1792:2393:2525:2560:2563:2682:2685:2828:2859:2902:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3622:3865:3866:3867:3868:3870:3871:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4250:4321:4605:5007:7903:8603:8957:9025:9592:10004:10848:11026:11232:11783:11889:11914:12043:12291:12296:12297:12438:12555:12683:12740:12895:12986:13138:13149:13230:13231:13439:13894:13972:14096:14097:14110:14659:21080:21433:21451:21626:21939:21972:21990:30012:30029:30045:30054:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: farm15_05178bf272e6
X-Filterd-Recvd-Size: 33534
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf10.hostedemail.com (Postfix) with ESMTPA;
	Sun,  8 Nov 2020 21:10:35 +0000 (UTC)
Message-ID: <0c4a15921d3093fbeba1bcc1a7e1dd9f26220e11.camel@perches.com>
Subject: Re: [PATCH] scsi: core: fix -Wformat
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>, "James E . J . Bottomley"
	 <jejb@linux.ibm.com>, "Martin K . Petersen" <martin.petersen@oracle.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
 linux-scsi@vger.kernel.org,  linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
Date: Sun, 08 Nov 2020 13:10:33 -0800
In-Reply-To: <20201107081132.2629071-1-ndesaulniers@google.com>
References: <20201107081132.2629071-1-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.131 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Sat, 2020-11-07 at 00:11 -0800, Nick Desaulniers wrote:
> Clang is more aggressive about -Wformat warnings when the format flag
> specifies a type smaller than the parameter. Turns out, struct
> Scsi_Host's member can_queue is actually an int. Fixes:
>=20
> warning: format specifies type 'short' but the argument has type 'int'
> [-Wformat]
> shost_rd_attr(can_queue, "%hd\n");
> ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0%d
> Link: https://github.com/ClangBuiltLinux/linux/issues/378
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> =C2=A0drivers/scsi/scsi_sysfs.c | 2 +-
> =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/scsi/scsi_sysfs.c b/drivers/scsi/scsi_sysfs.c
> index d6e344fa33ad..b6378c8ca783 100644
> --- a/drivers/scsi/scsi_sysfs.c
> +++ b/drivers/scsi/scsi_sysfs.c
> @@ -370,7 +370,7 @@ static DEVICE_ATTR(eh_deadline, S_IRUGO | S_IWUSR, sh=
ow_shost_eh_deadline, store
> =C2=A0
>=20
> =C2=A0shost_rd_attr(unique_id, "%u\n");
> =C2=A0shost_rd_attr(cmd_per_lun, "%hd\n");
> -shost_rd_attr(can_queue, "%hd\n");
> +shost_rd_attr(can_queue, "%d\n");
> =C2=A0shost_rd_attr(sg_tablesize, "%hu\n");
> =C2=A0shost_rd_attr(sg_prot_tablesize, "%hu\n");
> =C2=A0shost_rd_attr(unchecked_isa_dma, "%d\n");

Another option might be to reconfigure the whole sysfs output bits of
this file.

This is an unintended to be applied patch that likely could be a series:

o use sysfs_emit and not the sprintf family
o rename all the show/store macros and functions to move the show/store to
  the end of the name
o move the format strings used in macro definitions and uses before the
  type to be more similar to printf format then arg
o Convert all the S_<FOO> macros to octal
o Neatens whitespace

Perhaps:
---
 drivers/scsi/scsi_sysfs.c | 363 ++++++++++++++++++++++--------------------=
----
 1 file changed, 177 insertions(+), 186 deletions(-)

diff --git a/drivers/scsi/scsi_sysfs.c b/drivers/scsi/scsi_sysfs.c
index d6e344fa33ad..c08ce59ad4d0 100644
--- a/drivers/scsi/scsi_sysfs.c
+++ b/drivers/scsi/scsi_sysfs.c
@@ -153,35 +153,34 @@ static int scsi_scan(struct Scsi_Host *shost, const c=
har *str)
 }
=20
 /*
- * shost_show_function: macro to create an attr function that can be used =
to
+ * shost_function_show: macro to create an attr function that can be used =
to
  * show a non-bit field.
  */
-#define shost_show_function(name, field, format_string)			\
+#define shost_function_show(name, format, field)			\
 static ssize_t								\
-show_##name (struct device *dev, struct device_attribute *attr, 	\
-	     char *buf)							\
+name##_show(struct device *dev, struct device_attribute *attr, char *buf) =
\
 {									\
 	struct Scsi_Host *shost =3D class_to_shost(dev);			\
-	return snprintf (buf, 20, format_string, shost->field);		\
+	return sysfs_emit(buf, format "\n", shost->field);		\
 }
=20
 /*
  * shost_rd_attr: macro to create a function and attribute variable for a
  * read only field.
  */
-#define shost_rd_attr2(name, field, format_string)			\
-	shost_show_function(name, field, format_string)			\
-static DEVICE_ATTR(name, S_IRUGO, show_##name, NULL);
+#define shost_rd_attr2(name, format, field)				\
+	shost_function_show(name, format, field)			\
+static DEVICE_ATTR(name, 0444, name##_show, NULL);
=20
-#define shost_rd_attr(field, format_string) \
-shost_rd_attr2(field, field, format_string)
+#define shost_rd_attr(format, field)					\
+	shost_rd_attr2(field, format, field)
=20
 /*
  * Create the actual show/store functions and data structures.
  */
=20
 static ssize_t
-store_scan(struct device *dev, struct device_attribute *attr,
+scan_store(struct device *dev, struct device_attribute *attr,
 	   const char *buf, size_t count)
 {
 	struct Scsi_Host *shost =3D class_to_shost(dev);
@@ -192,10 +191,10 @@ store_scan(struct device *dev, struct device_attribut=
e *attr,
 		res =3D count;
 	return res;
 };
-static DEVICE_ATTR(scan, S_IWUSR, NULL, store_scan);
+static DEVICE_ATTR(scan, 0200, NULL, scan_store);
=20
 static ssize_t
-store_shost_state(struct device *dev, struct device_attribute *attr,
+shost_state_store(struct device *dev, struct device_attribute *attr,
 		  const char *buf, size_t count)
 {
 	int i;
@@ -219,7 +218,7 @@ store_shost_state(struct device *dev, struct device_att=
ribute *attr,
 }
=20
 static ssize_t
-show_shost_state(struct device *dev, struct device_attribute *attr, char *=
buf)
+shost_state_show(struct device *dev, struct device_attribute *attr, char *=
buf)
 {
 	struct Scsi_Host *shost =3D class_to_shost(dev);
 	const char *name =3D scsi_host_state_name(shost->shost_state);
@@ -227,31 +226,31 @@ show_shost_state(struct device *dev, struct device_at=
tribute *attr, char *buf)
 	if (!name)
 		return -EINVAL;
=20
-	return snprintf(buf, 20, "%s\n", name);
+	return sysfs_emit(buf, "%s\n", name);
 }
=20
 /* DEVICE_ATTR(state) clashes with dev_attr_state for sdev */
 static struct device_attribute dev_attr_hstate =3D
-	__ATTR(state, S_IRUGO | S_IWUSR, show_shost_state, store_shost_state);
+	__ATTR(state, 0644, shost_state_show, shost_state_store);
=20
 static ssize_t
-show_shost_mode(unsigned int mode, char *buf)
+shost_mode_show(unsigned int mode, char *buf)
 {
-	ssize_t len =3D 0;
+	int len =3D 0;
=20
 	if (mode & MODE_INITIATOR)
-		len =3D sprintf(buf, "%s", "Initiator");
+		len +=3D sysfs_emit_at(buf, len, "Initiator");
=20
 	if (mode & MODE_TARGET)
-		len +=3D sprintf(buf + len, "%s%s", len ? ", " : "", "Target");
+		len +=3D sysfs_emit_at(buf, len, "%sTarget", len ? ", " : "");
=20
-	len +=3D sprintf(buf + len, "\n");
+	len +=3D sysfs_emit_at(buf, len, "\n");
=20
 	return len;
 }
=20
 static ssize_t
-show_shost_supported_mode(struct device *dev, struct device_attribute *att=
r,
+shost_supported_mode_show(struct device *dev, struct device_attribute *att=
r,
 			  char *buf)
 {
 	struct Scsi_Host *shost =3D class_to_shost(dev);
@@ -261,24 +260,24 @@ show_shost_supported_mode(struct device *dev, struct =
device_attribute *attr,
 		/* by default this should be initiator */
 		supported_mode =3D MODE_INITIATOR;
=20
-	return show_shost_mode(supported_mode, buf);
+	return shost_mode_show(supported_mode, buf);
 }
=20
-static DEVICE_ATTR(supported_mode, S_IRUGO | S_IWUSR, show_shost_supported=
_mode, NULL);
+static DEVICE_ATTR(supported_mode, 0644, shost_supported_mode_show, NULL);
=20
 static ssize_t
-show_shost_active_mode(struct device *dev,
-		       struct device_attribute *attr, char *buf)
+shost_active_mode_show(struct device *dev, struct device_attribute *attr,
+		       char *buf)
 {
 	struct Scsi_Host *shost =3D class_to_shost(dev);
=20
 	if (shost->active_mode =3D=3D MODE_UNKNOWN)
-		return snprintf(buf, 20, "unknown\n");
-	else
-		return show_shost_mode(shost->active_mode, buf);
+		return sysfs_emit(buf, "unknown\n");
+
+	return shost_mode_show(shost->active_mode, buf);
 }
=20
-static DEVICE_ATTR(active_mode, S_IRUGO | S_IWUSR, show_shost_active_mode,=
 NULL);
+static DEVICE_ATTR(active_mode, 0644, shost_active_mode_show, NULL);
=20
 static int check_reset_type(const char *str)
 {
@@ -291,8 +290,8 @@ static int check_reset_type(const char *str)
 }
=20
 static ssize_t
-store_host_reset(struct device *dev, struct device_attribute *attr,
-		const char *buf, size_t count)
+host_reset_store(struct device *dev, struct device_attribute *attr,
+		 const char *buf, size_t count)
 {
 	struct Scsi_Host *shost =3D class_to_shost(dev);
 	struct scsi_host_template *sht =3D shost->hostt;
@@ -301,35 +300,35 @@ store_host_reset(struct device *dev, struct device_at=
tribute *attr,
=20
 	type =3D check_reset_type(buf);
 	if (!type)
-		goto exit_store_host_reset;
+		goto exit_host_reset_store;
=20
 	if (sht->host_reset)
 		ret =3D sht->host_reset(shost, type);
 	else
 		ret =3D -EOPNOTSUPP;
=20
-exit_store_host_reset:
+exit_host_reset_store:
 	if (ret =3D=3D 0)
 		ret =3D count;
 	return ret;
 }
=20
-static DEVICE_ATTR(host_reset, S_IWUSR, NULL, store_host_reset);
+static DEVICE_ATTR(host_reset, 0200, NULL, host_reset_store);
=20
 static ssize_t
-show_shost_eh_deadline(struct device *dev,
-		      struct device_attribute *attr, char *buf)
+shost_eh_deadline_show(struct device *dev, struct device_attribute *attr,
+		       char *buf)
 {
 	struct Scsi_Host *shost =3D class_to_shost(dev);
=20
 	if (shost->eh_deadline =3D=3D -1)
-		return snprintf(buf, strlen("off") + 2, "off\n");
-	return sprintf(buf, "%u\n", shost->eh_deadline / HZ);
+		return sysfs_emit(buf, "off\n");
+	return sysfs_emit(buf, "%u\n", shost->eh_deadline / HZ);
 }
=20
 static ssize_t
-store_shost_eh_deadline(struct device *dev, struct device_attribute *attr,
-		const char *buf, size_t count)
+shost_eh_deadline_store(struct device *dev, struct device_attribute *attr,
+			const char *buf, size_t count)
 {
 	struct Scsi_Host *shost =3D class_to_shost(dev);
 	int ret =3D -EINVAL;
@@ -366,42 +365,42 @@ store_shost_eh_deadline(struct device *dev, struct de=
vice_attribute *attr,
 	return ret;
 }
=20
-static DEVICE_ATTR(eh_deadline, S_IRUGO | S_IWUSR, show_shost_eh_deadline,=
 store_shost_eh_deadline);
+static DEVICE_ATTR(eh_deadline, 0644, shost_eh_deadline_show, shost_eh_dea=
dline_store);
=20
-shost_rd_attr(unique_id, "%u\n");
-shost_rd_attr(cmd_per_lun, "%hd\n");
-shost_rd_attr(can_queue, "%hd\n");
-shost_rd_attr(sg_tablesize, "%hu\n");
-shost_rd_attr(sg_prot_tablesize, "%hu\n");
-shost_rd_attr(unchecked_isa_dma, "%d\n");
-shost_rd_attr(prot_capabilities, "%u\n");
-shost_rd_attr(prot_guard_type, "%hd\n");
-shost_rd_attr2(proc_name, hostt->proc_name, "%s\n");
+shost_rd_attr("%u", unique_id);
+shost_rd_attr("%hd", cmd_per_lun);
+shost_rd_attr("%d", can_queue);
+shost_rd_attr("%hu", sg_tablesize);
+shost_rd_attr("%hu", sg_prot_tablesize);
+shost_rd_attr("%d", unchecked_isa_dma);
+shost_rd_attr("%u", prot_capabilities);
+shost_rd_attr("%hd", prot_guard_type);
+shost_rd_attr2(proc_name, "%s", hostt->proc_name);
=20
 static ssize_t
-show_host_busy(struct device *dev, struct device_attribute *attr, char *bu=
f)
+host_busy_show(struct device *dev, struct device_attribute *attr, char *bu=
f)
 {
 	struct Scsi_Host *shost =3D class_to_shost(dev);
-	return snprintf(buf, 20, "%d\n", scsi_host_busy(shost));
+	return sysfs_emit(buf, "%d\n", scsi_host_busy(shost));
 }
-static DEVICE_ATTR(host_busy, S_IRUGO, show_host_busy, NULL);
+static DEVICE_ATTR(host_busy, 0444, host_busy_show, NULL);
=20
 static ssize_t
-show_use_blk_mq(struct device *dev, struct device_attribute *attr, char *b=
uf)
+use_blk_mq_show(struct device *dev, struct device_attribute *attr, char *b=
uf)
 {
-	return sprintf(buf, "1\n");
+	return sysfs_emit(buf, "1\n");
 }
-static DEVICE_ATTR(use_blk_mq, S_IRUGO, show_use_blk_mq, NULL);
+static DEVICE_ATTR(use_blk_mq, 0444, use_blk_mq_show, NULL);
=20
 static ssize_t
-show_nr_hw_queues(struct device *dev, struct device_attribute *attr, char =
*buf)
+nr_hw_queues_show(struct device *dev, struct device_attribute *attr, char =
*buf)
 {
 	struct Scsi_Host *shost =3D class_to_shost(dev);
 	struct blk_mq_tag_set *tag_set =3D &shost->tag_set;
=20
-	return snprintf(buf, 20, "%d\n", tag_set->nr_hw_queues);
+	return sysfs_emit(buf, "%d\n", tag_set->nr_hw_queues);
 }
-static DEVICE_ATTR(nr_hw_queues, S_IRUGO, show_nr_hw_queues, NULL);
+static DEVICE_ATTR(nr_hw_queues, 0444, nr_hw_queues_show, NULL);
=20
 static struct attribute *scsi_sysfs_shost_attrs[] =3D {
 	&dev_attr_use_blk_mq.attr,
@@ -573,59 +572,58 @@ void scsi_sysfs_unregister(void)
 }
=20
 /*
- * sdev_show_function: macro to create an attr function that can be used t=
o
+ * sdev_function_show: macro to create an attr function that can be used t=
o
  * show a non-bit field.
  */
-#define sdev_show_function(field, format_string)				\
+#define sdev_function_show(format, field)				\
 static ssize_t								\
-sdev_show_##field (struct device *dev, struct device_attribute *attr,	\
-		   char *buf)						\
+sdev_##field##_show(struct device *dev, struct device_attribute *attr,	\
+		    char *buf)						\
 {									\
 	struct scsi_device *sdev;					\
 	sdev =3D to_scsi_device(dev);					\
-	return snprintf (buf, 20, format_string, sdev->field);		\
+	return sysfs_emit(buf, format "\n", sdev->field);		\
 }									\
=20
 /*
  * sdev_rd_attr: macro to create a function and attribute variable for a
  * read only field.
  */
-#define sdev_rd_attr(field, format_string)				\
-	sdev_show_function(field, format_string)			\
-static DEVICE_ATTR(field, S_IRUGO, sdev_show_##field, NULL);
-
+#define sdev_rd_attr(format, field)					\
+	sdev_function_show(format, field)				\
+static DEVICE_ATTR(field, 0444, sdev_##field##_show, NULL)
=20
 /*
  * sdev_rw_attr: create a function and attribute variable for a
  * read/write field.
  */
-#define sdev_rw_attr(field, format_string)				\
-	sdev_show_function(field, format_string)				\
+#define sdev_rw_attr(format, field)					\
+	sdev_function_show(format, field)				\
 									\
 static ssize_t								\
-sdev_store_##field (struct device *dev, struct device_attribute *attr,	\
-		    const char *buf, size_t count)			\
+sdev_##field##_store(struct device *dev, struct device_attribute *attr, \
+		     const char *buf, size_t count)			\
 {									\
 	struct scsi_device *sdev;					\
 	sdev =3D to_scsi_device(dev);					\
-	sscanf (buf, format_string, &sdev->field);			\
+	sscanf(buf, format, &sdev->field);				\
 	return count;							\
 }									\
-static DEVICE_ATTR(field, S_IRUGO | S_IWUSR, sdev_show_##field, sdev_store=
_##field);
+static DEVICE_ATTR(field, 0644, sdev_##field##_show, sdev_##field##_store)=
;
=20
 /* Currently we don't export bit fields, but we might in future,
  * so leave this code in */
 #if 0
 /*
- * sdev_rd_attr: create a function and attribute variable for a
+ * sdev_rd_attr_bit: create a function and attribute variable for a
  * read/write bit field.
  */
 #define sdev_rw_attr_bit(field)						\
-	sdev_show_function(field, "%d\n")					\
+	sdev_function_show("%d", field)					\
 									\
 static ssize_t								\
-sdev_store_##field (struct device *dev, struct device_attribute *attr,	\
-		    const char *buf, size_t count)			\
+sdev_##field##_store(struct device *dev, struct device_attribute *attr, \
+		     const char *buf, size_t count)			\
 {									\
 	int ret;							\
 	struct scsi_device *sdev;					\
@@ -637,7 +635,7 @@ sdev_store_##field (struct device *dev, struct device_a=
ttribute *attr,	\
 	}								\
 	return ret;							\
 }									\
-static DEVICE_ATTR(field, S_IRUGO | S_IWUSR, sdev_show_##field, sdev_store=
_##field);
+static DEVICE_ATTR(field, 0644, sdev_##field##_show, sdev_##field##_store)
=20
 /*
  * scsi_sdev_check_buf_bit: return 0 if buf is "0", return 1 if buf is "1"=
,
@@ -650,7 +648,7 @@ static int scsi_sdev_check_buf_bit(const char *buf)
 			return 1;
 		else if (buf[0] =3D=3D '0')
 			return 0;
-		else=20
+		else
 			return -EINVAL;
 	} else
 		return -EINVAL;
@@ -659,65 +657,66 @@ static int scsi_sdev_check_buf_bit(const char *buf)
 /*
  * Create the actual show/store functions and data structures.
  */
-sdev_rd_attr (type, "%d\n");
-sdev_rd_attr (scsi_level, "%d\n");
-sdev_rd_attr (vendor, "%.8s\n");
-sdev_rd_attr (model, "%.16s\n");
-sdev_rd_attr (rev, "%.4s\n");
+sdev_rd_attr("%d", type);
+sdev_rd_attr("%d", scsi_level);
+sdev_rd_attr("%.8s", vendor);
+sdev_rd_attr("%.16s", model);
+sdev_rd_attr("%.4s", rev);
=20
 static ssize_t
-sdev_show_device_busy(struct device *dev, struct device_attribute *attr,
-		char *buf)
+sdev_device_busy_show(struct device *dev, struct device_attribute *attr,
+		      char *buf)
 {
 	struct scsi_device *sdev =3D to_scsi_device(dev);
-	return snprintf(buf, 20, "%d\n", atomic_read(&sdev->device_busy));
+	return sysfs_emit(buf, "%d\n", atomic_read(&sdev->device_busy));
 }
-static DEVICE_ATTR(device_busy, S_IRUGO, sdev_show_device_busy, NULL);
+static DEVICE_ATTR(device_busy, 0444, sdev_device_busy_show, NULL);
=20
 static ssize_t
-sdev_show_device_blocked(struct device *dev, struct device_attribute *attr=
,
-		char *buf)
+sdev_device_blocked_show(struct device *dev, struct device_attribute *attr=
,
+			 char *buf)
 {
 	struct scsi_device *sdev =3D to_scsi_device(dev);
-	return snprintf(buf, 20, "%d\n", atomic_read(&sdev->device_blocked));
+	return sysfs_emit(buf, "%d\n", atomic_read(&sdev->device_blocked));
 }
-static DEVICE_ATTR(device_blocked, S_IRUGO, sdev_show_device_blocked, NULL=
);
+static DEVICE_ATTR(device_blocked, 0444, sdev_device_blocked_show, NULL);
=20
 /*
  * TODO: can we make these symlinks to the block layer ones?
  */
 static ssize_t
-sdev_show_timeout (struct device *dev, struct device_attribute *attr, char=
 *buf)
+sdev_timeout_show(struct device *dev, struct device_attribute *attr, char =
*buf)
 {
 	struct scsi_device *sdev;
 	sdev =3D to_scsi_device(dev);
-	return snprintf(buf, 20, "%d\n", sdev->request_queue->rq_timeout / HZ);
+	return sysfs_emit(buf, "%d\n", sdev->request_queue->rq_timeout / HZ);
 }
=20
 static ssize_t
-sdev_store_timeout (struct device *dev, struct device_attribute *attr,
-		    const char *buf, size_t count)
+sdev_timeout_store(struct device *dev, struct device_attribute *attr,
+		   const char *buf, size_t count)
 {
 	struct scsi_device *sdev;
 	int timeout;
 	sdev =3D to_scsi_device(dev);
-	sscanf (buf, "%d\n", &timeout);
+	sscanf(buf, "%d\n", &timeout);
 	blk_queue_rq_timeout(sdev->request_queue, timeout * HZ);
 	return count;
 }
-static DEVICE_ATTR(timeout, S_IRUGO | S_IWUSR, sdev_show_timeout, sdev_sto=
re_timeout);
+static DEVICE_ATTR(timeout, 0644, sdev_timeout_show, sdev_timeout_store);
=20
 static ssize_t
-sdev_show_eh_timeout(struct device *dev, struct device_attribute *attr, ch=
ar *buf)
+sdev_eh_timeout_show(struct device *dev, struct device_attribute *attr,
+		     char *buf)
 {
 	struct scsi_device *sdev;
 	sdev =3D to_scsi_device(dev);
-	return snprintf(buf, 20, "%u\n", sdev->eh_timeout / HZ);
+	return sysfs_emit(buf, "%u\n", sdev->eh_timeout / HZ);
 }
=20
 static ssize_t
-sdev_store_eh_timeout(struct device *dev, struct device_attribute *attr,
-		    const char *buf, size_t count)
+sdev_eh_timeout_store(struct device *dev, struct device_attribute *attr,
+		      const char *buf, size_t count)
 {
 	struct scsi_device *sdev;
 	unsigned int eh_timeout;
@@ -734,19 +733,19 @@ sdev_store_eh_timeout(struct device *dev, struct devi=
ce_attribute *attr,
=20
 	return count;
 }
-static DEVICE_ATTR(eh_timeout, S_IRUGO | S_IWUSR, sdev_show_eh_timeout, sd=
ev_store_eh_timeout);
+static DEVICE_ATTR(eh_timeout, 0644, sdev_eh_timeout_show, sdev_eh_timeout=
_store);
=20
 static ssize_t
-store_rescan_field (struct device *dev, struct device_attribute *attr,
-		    const char *buf, size_t count)
+rescan_field_store(struct device *dev, struct device_attribute *attr,
+		   const char *buf, size_t count)
 {
 	scsi_rescan_device(dev);
 	return count;
 }
-static DEVICE_ATTR(rescan, S_IWUSR, NULL, store_rescan_field);
+static DEVICE_ATTR(rescan, 0200, NULL, rescan_field_store);
=20
 static ssize_t
-sdev_store_delete(struct device *dev, struct device_attribute *attr,
+sdev_delete_store(struct device *dev, struct device_attribute *attr,
 		  const char *buf, size_t count)
 {
 	struct kernfs_node *kn;
@@ -778,7 +777,7 @@ sdev_store_delete(struct device *dev, struct device_att=
ribute *attr,
 	scsi_device_put(sdev);
 	return count;
 };
-static DEVICE_ATTR(delete, S_IWUSR, NULL, sdev_store_delete);
+static DEVICE_ATTR(delete, 0200, NULL, sdev_delete_store);
=20
 static ssize_t
 store_state_field(struct device *dev, struct device_attribute *attr,
@@ -818,7 +817,7 @@ store_state_field(struct device *dev, struct device_att=
ribute *attr,
 }
=20
 static ssize_t
-show_state_field(struct device *dev, struct device_attribute *attr, char *=
buf)
+state_field_show(struct device *dev, struct device_attribute *attr, char *=
buf)
 {
 	struct scsi_device *sdev =3D to_scsi_device(dev);
 	const char *name =3D scsi_device_state_name(sdev->sdev_state);
@@ -826,13 +825,13 @@ show_state_field(struct device *dev, struct device_at=
tribute *attr, char *buf)
 	if (!name)
 		return -EINVAL;
=20
-	return snprintf(buf, 20, "%s\n", name);
+	return sysfs_emit(buf, "%s\n", name);
 }
=20
-static DEVICE_ATTR(state, S_IRUGO | S_IWUSR, show_state_field, store_state=
_field);
+static DEVICE_ATTR(state, 0644, state_field_show, store_state_field);
=20
 static ssize_t
-show_queue_type_field(struct device *dev, struct device_attribute *attr,
+queue_type_field_show(struct device *dev, struct device_attribute *attr,
 		      char *buf)
 {
 	struct scsi_device *sdev =3D to_scsi_device(dev);
@@ -841,7 +840,7 @@ show_queue_type_field(struct device *dev, struct device=
_attribute *attr,
 	if (sdev->simple_tags)
 		name =3D "simple";
=20
-	return snprintf(buf, 20, "%s\n", name);
+	return sysfs_emit(buf, "%s\n", name);
 }
=20
 static ssize_t
@@ -852,13 +851,13 @@ store_queue_type_field(struct device *dev, struct dev=
ice_attribute *attr,
=20
 	if (!sdev->tagged_supported)
 		return -EINVAL;
-	=09
+
 	sdev_printk(KERN_INFO, sdev,
 		    "ignoring write to deprecated queue_type attribute");
 	return count;
 }
=20
-static DEVICE_ATTR(queue_type, S_IRUGO | S_IWUSR, show_queue_type_field,
+static DEVICE_ATTR(queue_type, 0644, queue_type_field_show,
 		   store_queue_type_field);
=20
 #define sdev_vpd_pg_attr(_page)						\
@@ -880,8 +879,8 @@ show_vpd_##_page(struct file *filp, struct kobject *kob=
j,	\
 	rcu_read_unlock();						\
 	return ret;							\
 }									\
-static struct bin_attribute dev_attr_vpd_##_page =3D {		\
-	.attr =3D	{.name =3D __stringify(vpd_##_page), .mode =3D S_IRUGO },	\
+static struct bin_attribute dev_attr_vpd_##_page =3D {			\
+	.attr =3D	{.name =3D __stringify(vpd_##_page), .mode =3D 0444 },	\
 	.size =3D 0,							\
 	.read =3D show_vpd_##_page,					\
 };
@@ -908,59 +907,59 @@ static ssize_t show_inquiry(struct file *filep, struc=
t kobject *kobj,
 static struct bin_attribute dev_attr_inquiry =3D {
 	.attr =3D {
 		.name =3D "inquiry",
-		.mode =3D S_IRUGO,
+		.mode =3D 0444,
 	},
 	.size =3D 0,
 	.read =3D show_inquiry,
 };
=20
 static ssize_t
-show_iostat_counterbits(struct device *dev, struct device_attribute *attr,
+iostat_counterbits_show(struct device *dev, struct device_attribute *attr,
 			char *buf)
 {
-	return snprintf(buf, 20, "%d\n", (int)sizeof(atomic_t) * 8);
+	return sysfs_emit(buf, "%zu\n", sizeof(atomic_t) * 8);
 }
=20
-static DEVICE_ATTR(iocounterbits, S_IRUGO, show_iostat_counterbits, NULL);
+static DEVICE_ATTR(iocounterbits, 0444, iostat_counterbits_show, NULL);
=20
-#define show_sdev_iostat(field)						\
+#define sdev_iostat_show(field)						\
 static ssize_t								\
-show_iostat_##field(struct device *dev, struct device_attribute *attr,	\
-		    char *buf)						\
+iostat_##field##_show(struct device *dev, struct device_attribute *attr, \
+		      char *buf)					\
 {									\
 	struct scsi_device *sdev =3D to_scsi_device(dev);			\
 	unsigned long long count =3D atomic_read(&sdev->field);		\
-	return snprintf(buf, 20, "0x%llx\n", count);			\
+	return sysfs_emit(buf, "0x%llx\n", count);			\
 }									\
-static DEVICE_ATTR(field, S_IRUGO, show_iostat_##field, NULL)
+static DEVICE_ATTR(field, 0444, iostat_##field##_show, NULL)
=20
-show_sdev_iostat(iorequest_cnt);
-show_sdev_iostat(iodone_cnt);
-show_sdev_iostat(ioerr_cnt);
+sdev_iostat_show(iorequest_cnt);
+sdev_iostat_show(iodone_cnt);
+sdev_iostat_show(ioerr_cnt);
=20
 static ssize_t
-sdev_show_modalias(struct device *dev, struct device_attribute *attr, char=
 *buf)
+sdev_modalias_show(struct device *dev, struct device_attribute *attr, char=
 *buf)
 {
 	struct scsi_device *sdev;
 	sdev =3D to_scsi_device(dev);
-	return snprintf (buf, 20, SCSI_DEVICE_MODALIAS_FMT "\n", sdev->type);
+	return sysfs_emit(buf, SCSI_DEVICE_MODALIAS_FMT "\n", sdev->type);
 }
-static DEVICE_ATTR(modalias, S_IRUGO, sdev_show_modalias, NULL);
+static DEVICE_ATTR(modalias, 0444, sdev_modalias_show, NULL);
=20
 #define DECLARE_EVT_SHOW(name, Cap_name)				\
 static ssize_t								\
-sdev_show_evt_##name(struct device *dev, struct device_attribute *attr,	\
-		     char *buf)						\
+sdev_evt_##name##_show(struct device *dev, struct device_attribute *attr, =
\
+		       char *buf)					\
 {									\
 	struct scsi_device *sdev =3D to_scsi_device(dev);			\
 	int val =3D test_bit(SDEV_EVT_##Cap_name, sdev->supported_events);\
-	return snprintf(buf, 20, "%d\n", val);				\
+	return sysfs_emit(buf, "%d\n", val);				\
 }
=20
 #define DECLARE_EVT_STORE(name, Cap_name)				\
 static ssize_t								\
-sdev_store_evt_##name(struct device *dev, struct device_attribute *attr,\
-		      const char *buf, size_t count)			\
+sdev_evt_##name##_store(struct device *dev, struct device_attribute *attr,=
 \
+			const char *buf, size_t count)			\
 {									\
 	struct scsi_device *sdev =3D to_scsi_device(dev);			\
 	int val =3D simple_strtoul(buf, NULL, 0);				\
@@ -976,8 +975,8 @@ sdev_store_evt_##name(struct device *dev, struct device=
_attribute *attr,\
 #define DECLARE_EVT(name, Cap_name)					\
 	DECLARE_EVT_SHOW(name, Cap_name)				\
 	DECLARE_EVT_STORE(name, Cap_name)				\
-	static DEVICE_ATTR(evt_##name, S_IRUGO, sdev_show_evt_##name,	\
-			   sdev_store_evt_##name);
+	static DEVICE_ATTR(evt_##name, 0444, sdev_evt_##name##_show,	\
+			   sdev_evt_##name##_store);
 #define REF_EVT(name) &dev_attr_evt_##name.attr
=20
 DECLARE_EVT(media_change, MEDIA_CHANGE)
@@ -988,7 +987,7 @@ DECLARE_EVT(mode_parameter_change_reported, MODE_PARAME=
TER_CHANGE_REPORTED)
 DECLARE_EVT(lun_change_reported, LUN_CHANGE_REPORTED)
=20
 static ssize_t
-sdev_store_queue_depth(struct device *dev, struct device_attribute *attr,
+sdev_queue_depth_store(struct device *dev, struct device_attribute *attr,
 		       const char *buf, size_t count)
 {
 	int depth, retval;
@@ -1011,14 +1010,14 @@ sdev_store_queue_depth(struct device *dev, struct d=
evice_attribute *attr,
=20
 	return count;
 }
-sdev_show_function(queue_depth, "%d\n");
=20
-static DEVICE_ATTR(queue_depth, S_IRUGO | S_IWUSR, sdev_show_queue_depth,
-		   sdev_store_queue_depth);
+sdev_function_show("%d", queue_depth);
+
+static DEVICE_ATTR(queue_depth, 0644, sdev_queue_depth_show,
+		   sdev_queue_depth_store);
=20
 static ssize_t
-sdev_show_wwid(struct device *dev, struct device_attribute *attr,
-		    char *buf)
+sdev_wwid_show(struct device *dev, struct device_attribute *attr, char *bu=
f)
 {
 	struct scsi_device *sdev =3D to_scsi_device(dev);
 	ssize_t count;
@@ -1030,7 +1029,7 @@ sdev_show_wwid(struct device *dev, struct device_attr=
ibute *attr,
 	}
 	return count;
 }
-static DEVICE_ATTR(wwid, S_IRUGO, sdev_show_wwid, NULL);
+static DEVICE_ATTR(wwid, 0444, sdev_wwid_show, NULL);
=20
 #define BLIST_FLAG_NAME(name)					\
 	[const_ilog2((__force __u64)BLIST_##name)] =3D #name
@@ -1040,12 +1039,12 @@ static const char *const sdev_bflags_name[] =3D {
 #undef BLIST_FLAG_NAME
=20
 static ssize_t
-sdev_show_blacklist(struct device *dev, struct device_attribute *attr,
+sdev_blacklist_show(struct device *dev, struct device_attribute *attr,
 		    char *buf)
 {
 	struct scsi_device *sdev =3D to_scsi_device(dev);
 	int i;
-	ssize_t len =3D 0;
+	int len =3D 0;
=20
 	for (i =3D 0; i < sizeof(sdev->sdev_bflags) * BITS_PER_BYTE; i++) {
 		const char *name =3D NULL;
@@ -1056,33 +1055,32 @@ sdev_show_blacklist(struct device *dev, struct devi=
ce_attribute *attr,
 			name =3D sdev_bflags_name[i];
=20
 		if (name)
-			len +=3D scnprintf(buf + len, PAGE_SIZE - len,
-					 "%s%s", len ? " " : "", name);
+			len +=3D sysfs_emit_at(buf, len, "%s%s",
+					     len ? " " : "", name);
 		else
-			len +=3D scnprintf(buf + len, PAGE_SIZE - len,
-					 "%sINVALID_BIT(%d)", len ? " " : "", i);
+			len +=3D sysfs_emit_at(buf, len, "%sINVALID_BIT(%d)",
+					     len ? " " : "", i);
 	}
-	if (len)
-		len +=3D scnprintf(buf + len, PAGE_SIZE - len, "\n");
+	len +=3D sysfs_emit_at(buf, len, "\n");
 	return len;
 }
-static DEVICE_ATTR(blacklist, S_IRUGO, sdev_show_blacklist, NULL);
+static DEVICE_ATTR(blacklist, 0444, sdev_blacklist_show, NULL);
=20
 #ifdef CONFIG_SCSI_DH
 static ssize_t
-sdev_show_dh_state(struct device *dev, struct device_attribute *attr,
+sdev_dh_state_show(struct device *dev, struct device_attribute *attr,
 		   char *buf)
 {
 	struct scsi_device *sdev =3D to_scsi_device(dev);
=20
 	if (!sdev->handler)
-		return snprintf(buf, 20, "detached\n");
+		return sysfs_emit(buf, "detached\n");
=20
-	return snprintf(buf, 20, "%s\n", sdev->handler->name);
+	return sysfs_emit(buf, "%s\n", sdev->handler->name);
 }
=20
 static ssize_t
-sdev_store_dh_state(struct device *dev, struct device_attribute *attr,
+sdev_dh_state_store(struct device *dev, struct device_attribute *attr,
 		    const char *buf, size_t count)
 {
 	struct scsi_device *sdev =3D to_scsi_device(dev);
@@ -1118,12 +1116,10 @@ sdev_store_dh_state(struct device *dev, struct devi=
ce_attribute *attr,
 	return err < 0 ? err : count;
 }
=20
-static DEVICE_ATTR(dh_state, S_IRUGO | S_IWUSR, sdev_show_dh_state,
-		   sdev_store_dh_state);
+static DEVICE_ATTR(dh_state, 0644, sdev_dh_state_show, sdev_dh_state_store=
);
=20
 static ssize_t
-sdev_show_access_state(struct device *dev,
-		       struct device_attribute *attr,
+sdev_access_state_show(struct device *dev, struct device_attribute *attr,
 		       char *buf)
 {
 	struct scsi_device *sdev =3D to_scsi_device(dev);
@@ -1136,14 +1132,12 @@ sdev_show_access_state(struct device *dev,
 	access_state =3D (sdev->access_state & SCSI_ACCESS_STATE_MASK);
 	access_state_name =3D scsi_access_state_name(access_state);
=20
-	return sprintf(buf, "%s\n",
-		       access_state_name ? access_state_name : "unknown");
+	return sysfs_emit(buf, "%s\n", access_state_name ?: "unknown");
 }
-static DEVICE_ATTR(access_state, S_IRUGO, sdev_show_access_state, NULL);
+static DEVICE_ATTR(access_state, 0444, sdev_access_state_show, NULL);
=20
 static ssize_t
-sdev_show_preferred_path(struct device *dev,
-			 struct device_attribute *attr,
+sdev_preferred_path_show(struct device *dev, struct device_attribute *attr=
,
 			 char *buf)
 {
 	struct scsi_device *sdev =3D to_scsi_device(dev);
@@ -1151,27 +1145,24 @@ sdev_show_preferred_path(struct device *dev,
 	if (!sdev->handler)
 		return -EINVAL;
=20
-	if (sdev->access_state & SCSI_ACCESS_STATE_PREFERRED)
-		return sprintf(buf, "1\n");
-	else
-		return sprintf(buf, "0\n");
+	return sysfs_emit(buf, "%d\n",
+			  !!(sdev->access_state & SCSI_ACCESS_STATE_PREFERRED));
 }
-static DEVICE_ATTR(preferred_path, S_IRUGO, sdev_show_preferred_path, NULL=
);
+static DEVICE_ATTR(preferred_path, 0444, sdev_preferred_path_show, NULL);
 #endif
=20
 static ssize_t
-sdev_show_queue_ramp_up_period(struct device *dev,
-			       struct device_attribute *attr,
-			       char *buf)
+sdev_queue_ramp_up_period_show(struct device *dev,
+			       struct device_attribute *attr, char *buf)
 {
 	struct scsi_device *sdev;
 	sdev =3D to_scsi_device(dev);
-	return snprintf(buf, 20, "%u\n",
-			jiffies_to_msecs(sdev->queue_ramp_up_period));
+	return sysfs_emit(buf, "%u\n",
+			  jiffies_to_msecs(sdev->queue_ramp_up_period));
 }
=20
 static ssize_t
-sdev_store_queue_ramp_up_period(struct device *dev,
+sdev_queue_ramp_up_period_store(struct device *dev,
 				struct device_attribute *attr,
 				const char *buf, size_t count)
 {
@@ -1185,9 +1176,9 @@ sdev_store_queue_ramp_up_period(struct device *dev,
 	return count;
 }
=20
-static DEVICE_ATTR(queue_ramp_up_period, S_IRUGO | S_IWUSR,
-		   sdev_show_queue_ramp_up_period,
-		   sdev_store_queue_ramp_up_period);
+static DEVICE_ATTR(queue_ramp_up_period, 0644,
+		   sdev_queue_ramp_up_period_show,
+		   sdev_queue_ramp_up_period_store);
=20
 static umode_t scsi_sdev_attr_is_visible(struct kobject *kobj,
 					 struct attribute *attr, int i)
@@ -1198,7 +1189,7 @@ static umode_t scsi_sdev_attr_is_visible(struct kobje=
ct *kobj,
=20
 	if (attr =3D=3D &dev_attr_queue_depth.attr &&
 	    !sdev->host->hostt->change_queue_depth)
-		return S_IRUGO;
+		return 0444;
=20
 	if (attr =3D=3D &dev_attr_queue_ramp_up_period.attr &&
 	    !sdev->host->hostt->change_queue_depth)
@@ -1234,7 +1225,7 @@ static umode_t scsi_sdev_bin_attr_is_visible(struct k=
object *kobj,
 	if (attr =3D=3D &dev_attr_vpd_pg89 && !sdev->vpd_pg89)
 		return 0;
=20
-	return S_IRUGO;
+	return 0444;
 }
=20
 /* Default template for device attributes.  May NOT be modified */


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/0c4a15921d3093fbeba1bcc1a7e1dd9f26220e11.camel%40perches.=
com.
